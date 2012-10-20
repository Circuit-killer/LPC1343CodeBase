#ifndef ENCODER_H_
#define ENCODER_H_

#include <stdint.h>

#define STATUS_STOPPED 0
#define STATUS_RUNNING 2

#define DIRECTION_NONE 0
#define DIRECTION_CW 1
#define DIRECTION_CCW 2


typedef struct e {
  uint8_t port;
  uint8_t pinU1;
  uint8_t pinU2;
  uint8_t direction;
  uint8_t tempDirection;
  uint32_t pulses;
  uint32_t pulsesTemp;
  uint8_t status;
  uint8_t interrupt;
  uint32_t lastTimestamp; 
  uint32_t timestamp;
  uint32_t debounceDelayUs;
} encoder_t;

inline uint32_t isEncoderInterrupt(encoder_t *encoder);
inline void setEncoderInterrupt(encoder_t *encoder);
inline void onEncoderInterrupt(encoder_t *encoder);
inline void encoderReset(encoder_t *encoder);
inline uint8_t isEncoderTimeout(encoder_t *encoder, uint32_t timeout);

#endif