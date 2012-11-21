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

inline void encoderSetupHardware(encoder_t *encoder) {
  gpioSetDir(encoder->port, encoder->pinU1, gpioDirection_Input);
  gpioSetDir(encoder->port, encoder->pinU2, gpioDirection_Input);
  
  gpioSetDir(encoder->indicatorPort, encoder->indicatorPin, gpioDirection_Output);
  gpioSetValue(encoder->indicatorPort, encoder->indicatorPin, INDICATOR_LED_OFF);
  
  gpioSetInterrupt(encoder->port, encoder->pinU1, gpioInterruptSense_Edge, gpioInterruptEdge_Single, gpioInterruptEvent_ActiveLow);
  gpioIntEnable(encoder->port, encoder->pinU1);  
}

inline void encoderStart(encoder_t * encoder) {
  encoder->status = STATUS_RUNNING;
  encoder->pulses += encoder->pulsesTemp;
  gpioSetValue(encoder->indicatorPort, encoder->indicatorPin, INDICATOR_LED_ON);
}

inline void encoderReset(encoder_t *encoder) {
  printf("on reset tempPulses: %d pulses: %d%s", encoder->pulsesTemp, encoder->pulses, CFG_PRINTF_NEWLINE);
  encoder->pulsesTemp = 0;
  encoder->direction = DIRECTION_NONE;
  encoder->status = STATUS_STOPPED;
  gpioSetValue(encoder->indicatorPort, encoder->indicatorPin, INDICATOR_LED_OFF);
}

inline uint8_t isSuddenDirectionChange(encoder_t *encoder) {
  return encoder->direction != DIRECTION_NONE && encoder->tempDirection != encoder->direction;
}

inline uint8_t isEncoderTimeout(encoder_t *encoder, uint32_t currTimestamp) {
  return STATUS_RUNNING == encoder->status && ((currTimestamp - encoder->timestamp) > encoder->timeout);
}

inline uint8_t isNotSingleSpike(encoder_t *encoder) {
  timer32Delay(0, encoder->debounceDelayUs);
  return !encoder->interrupt && 0 == gpioGetValue(encoder->port, encoder->pinU1);
}

inline void onEncoderInterrupt(encoder_t *encoder) {
  encoder->interrupt = 0;
  if(isSuddenDirectionChange(encoder)) {
    printf("sudden dir change%s", CFG_PRINTF_NEWLINE);
    encoderReset(encoder);
  } else {
//    if(isNotSingleSpike(encoder)) {
      encoder->pulsesTemp++;
      if(STATUS_RUNNING == encoder->status){
        encoder->pulses++;
      }
      encoder->direction = encoder->tempDirection;
//    } else {
//      printf("single spike%s", CFG_PRINTF_NEWLINE);
//    }
  }
  encoder->timestamp = timer32GetCount(0);  
}

inline void setEncoderInterrupt(encoder_t *encoder) {
  encoder->tempDirection = determineEncoderDirection(encoder);
  encoder->interrupt = 1;
}

inline uint32_t isEncoderInterrupt(encoder_t *encoder) {
  return gpioIntStatus(encoder->port, encoder->pinU1);
}

inline uint8_t encoderCanStart(encoder_t *encoder) {
  return encoder->pulsesTemp > encoder->goThreshold && STATUS_STOPPED == encoder->status;
}

