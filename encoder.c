#include "encoder.h"
#include "core/gpio/gpio.h"
#include "core/timer32/timer32.h"

inline uint8_t determineEncoderDirection(encoder_t *encoder) {
  if(gpioGetValue(encoder->port, encoder->pinU2)) {
    return DIRECTION_CW;
  } else {
    return DIRECTION_CCW;
  }  
}

inline void encoderReset(encoder_t *encoder) {
  encoder->stepCount = 0;
  encoder->direction = DIRECTION_NONE;
  encoder->status = STATUS_STOPPED;
}

inline uint8_t isSuddenDirectionChange(encoder_t *encoder) {
  return encoder->direction != DIRECTION_NONE && encoder->tempDirection != encoder->direction;
}

inline uint8_t isEncoderTimeout(encoder_t *encoder, uint32_t timeout) {
  return 0 == encoder->lastTimestamp || encoder->timestamp - encoder->lastTimestamp > timeout;
}

inline uint8_t isNotSingleSpike(encoder_t *encoder) {
  timer32Delay(0, encoder->debounceDelayUs);
  return !encoder->interrupt && 0 == gpioGetValue(encoder->port, encoder->pinU1);
}

inline void onEncoderInterrupt(encoder_t *encoder) {
  encoder->interrupt = 0;
  if(isSuddenDirectionChange(encoder)) {
    encoderReset(encoder);
  } else {
    if(isNotSingleSpike(encoder)) {
      encoder->stepCount++;
      encoder->direction = encoder->tempDirection;
    }
  }
  encoder->lastTimestamp = encoder->timestamp;  
}

inline void setEncoderInterrupt(encoder_t *encoder) {
  encoder->tempDirection = determineEncoderDirection(encoder);
  encoder->interrupt = 1;
  encoder->timestamp = timer32GetCount(0);  
}

inline uint32_t isEncoderInterrupt(encoder_t *encoder) {
  return gpioIntStatus(encoder->port, encoder->pinU1);
}

