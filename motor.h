#ifndef MOTOR_H_
#define MOTOR_H_
#include <stdint.h>

typedef struct mm {
  int32_t frequency;         //0 - 10000 1/100%
  double ffrequency;         //0 - 10000 1/100%
  int32_t targetFrequency; //0 - 10000 1/100%
  uint32_t timestamp;       //us
  double fpulses;            //fractional pulses 
  int32_t pulses;          //encoder pulses
  float responseCoeff;      //step response coeff
} MotorModel_t;

void motorInit(MotorModel_t *motor);
void motorStart(MotorModel_t *motor, uint32_t timestamp);
void motorSetTargetFrequency(MotorModel_t *motor, int16_t target);
void motorStep(MotorModel_t *motor, uint32_t timestamp);

#endif