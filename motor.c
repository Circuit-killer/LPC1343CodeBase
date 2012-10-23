#include <stdint.h>
#include <stdio.h>
#include <float.h>
#include "motor.h"
#include "projectconfig.h"


#define NOMINAL_SPEED 0.8//rps
#define PULSES_PER_ROTATION 2500

void motorInit(MotorModel_t *motor) {
  motor->targetFrequency = 0;
  motor->frequency = 0;
  motor->responseCoeff = 0.02;
  motor->pulses = 0;
  motor->fpulses = 0;
  motor->ffrequency = 0;
  motor->timestamp = 0;
}

void countRouteTravelled(MotorModel_t *motor, uint32_t timestamp) {
  double r1 = (double)NOMINAL_SPEED / (double)10000.0 * motor->ffrequency;
  double rotations = r1 * (double)(timestamp - motor->timestamp) / (double)1000000;
  motor->fpulses = motor->fpulses + (double) PULSES_PER_ROTATION * rotations;
  
//  uint32_t r2 = rotations * 1000;
//  uint32_t p = motor->fpulses * 1000;
//  printf("dt: %d, r:%d, p:%d ",(timestamp - motor->timestamp), r2, p);

  motor->pulses = (int32_t) motor->fpulses;
}

void motorStart(MotorModel_t *motor, uint32_t timestamp) {
  motor->timestamp = timestamp;
}

void motorStep(MotorModel_t *motor, uint32_t timestamp) {
  if(motor->frequency < motor->targetFrequency) {
    motor->ffrequency = motor->ffrequency + (double) motor->responseCoeff * (timestamp - motor->timestamp);
    motor->frequency = (int32_t) motor->ffrequency;
    if(motor->frequency > motor->targetFrequency) {
      motor->frequency = motor->targetFrequency;
      motor->ffrequency = motor->targetFrequency;
    }
  } else if(motor->frequency > motor->targetFrequency) {
    motor->ffrequency = motor->ffrequency - (double) motor->responseCoeff * (timestamp - motor->timestamp) ;
    motor->frequency = (int32_t) motor->ffrequency;
    if(motor->frequency < motor->targetFrequency) {
      motor->frequency = motor->targetFrequency;
      motor->ffrequency = motor->targetFrequency;
    }
  }
  if(motor->frequency == 0) {
    motor->ffrequency = 0;
  }
  countRouteTravelled(motor, timestamp);
  motor->timestamp = timestamp;
}

void motorSetTargetFrequency(MotorModel_t *motor, int16_t target){
  motor->targetFrequency = target;
}


//int main() {
//  uint32_t i;
//  MotorModel_t m;
//  MotorModel_t* motor = &m;
//  motorInit(motor);
//  motorStart(motor, 0);
//  motorSetTargetFrequency(motor, 10000);
//  printf("rotations frequency pulses speed\n");
//  for(i = 0; i < 6000000; i+= 10000) {
//    motorStep(motor, i);
//    printf("%d, %d\n", motor->frequency, motor->pulses);
//  }
//  return 0;
//}
