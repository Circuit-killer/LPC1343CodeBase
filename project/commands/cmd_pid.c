#include <stdio.h>

#include "projectconfig.h"
#include "core/cmd/cmd.h"
#include "project/commands.h"       // Generic helper functions

#include "motor.h" 
#include "modbus.h" 
#include "pid.h"
#include "encoder.h"

/**************************************************************************/
/*! 
    PWM command handler
*/
/**************************************************************************/
void cmd_pid_run(uint8_t argc, char **argv) {
  runSynchro = 1;
}

void cmd_pid_stop(uint8_t argc, char **argv) {
  runSynchro = 0;
}

void cmd_ratio(uint8_t argc, char **argv) {
  int32_t r = 0;
  getNumber(argv[0], &r);
  encoderRatio = r;
  printf("encoder ratio set to %d%s", encoderRatio, CFG_PRINTF_NEWLINE);
}

void cmd_set_pid(uint8_t argc, char **argv) {
  int32_t p = 0;
  int32_t i = 0;
  int32_t d = 0;

  getNumber (argv[0], &p);
  getNumber (argv[1], &i);
  getNumber (argv[2], &d);

  pid_Init(p, i, d, pid);
  printf("%d %d %d OK%s", pid->P_Factor, pid->I_Factor, pid->D_Factor, CFG_PRINTF_NEWLINE);
}

void cmd_step_test(uint8_t argc, char **argv) {
  int32_t setFreq = 10000;
  int32_t dt = 3000;
  int32_t steps = dt*1000;
  if(argc > 0) {
    getNumber(argv[0], &setFreq);
  }
  if(argc > 1) {
    getNumber(argv[1], &dt);
  }
  if(argc > 2) {
    getNumber(argv[2], &steps);
  }
  
  MotorModel_t m;
  MotorModel_t* motor = &m;
  motorInit(motor);

  motorSetTargetFrequency(motor, setFreq);
  modbusSetSpeed(setFreq);
  modbusControl(1);
  uint32_t lastPulses = 0;
  int j;
  for(j = 0; j < steps; j+=dt) {
    motorStep(motor, j);
    printf("%d%s", motor->pulses, CFG_PRINTF_NEWLINE);
    lastPulses = motor->pulses;
  }
  modbusControl(0);
}

void cmd_pid_test(uint8_t argc, char **argv) {
  int32_t p = 0;
  int32_t i = 0;
  int32_t d = 0;
  int32_t setPoint = 50;
  int32_t dt = 5000;
  int32_t steps = dt * 1000;
  int32_t output = 0;
    
  getNumber (argv[0], &p);
  getNumber (argv[1], &i);
  getNumber (argv[2], &d);
  if(argc > 3) {
    getNumber (argv[3], &setPoint);
  }
  if(argc > 4){
    getNumber (argv[4], &dt);
  }
  if(argc > 5){
    getNumber (argv[5], &steps);
  }
  if(argc > 6){
    getNumber (argv[6], &output);
  }
  
  MotorModel_t m;
  MotorModel_t* motor = &m;
  motorInit(motor);
  
  pidData_t pd;
  pidData_t* pid = &pd;
  pid_Init(p, i, d, pid);
  
  int j;
  motorStart(motor, 0);
  int32_t motorTargetFrequency = 0;
  int32_t riseTime = 0;
  int32_t overshoot = 0;
  modbusControl(1);
  for(j = 0; j < steps; j+=dt) {
    motorStep(motor, j);
    int32_t controlAction = pid_Controller(setPoint, motor->pulses, pid);
    motorTargetFrequency = controlAction;//motorTargetFrequency + controlAction;
    if(motorTargetFrequency > 10000) {
      motorTargetFrequency = 10000;
    } else if(motorTargetFrequency < 0) {
      motorTargetFrequency = 0;
    }
    modbusSetSpeed(motorTargetFrequency);
    motorSetTargetFrequency(motor, motorTargetFrequency);
    if(1 == output) {
      printf("%d%s", motorTargetFrequency, CFG_PRINTF_NEWLINE);  
    } else {
      printf("%d%s", motor->pulses, CFG_PRINTF_NEWLINE);
    }
    if(0 == riseTime && motor->pulses == setPoint) {
      riseTime = j;
    }
    if(motor->pulses > setPoint && motor->pulses - setPoint > overshoot) {
      overshoot = motor->pulses - setPoint;
    }
  }
  modbusControl(0);
  printf("Rise time: %d%s", riseTime, CFG_PRINTF_NEWLINE);
  printf("Overshoot: %d%s", overshoot, CFG_PRINTF_NEWLINE);
}
