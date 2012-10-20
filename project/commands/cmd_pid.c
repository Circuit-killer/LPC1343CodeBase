#include <stdio.h>

#include "projectconfig.h"
#include "core/cmd/cmd.h"
#include "project/commands.h"       // Generic helper functions

#include "motor.h"
#include "pid.h"

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

void cmd_pid_test(uint8_t argc, char **argv) {
  int32_t p = 0;
  int32_t i = 0;
  int32_t d = 0;
  int32_t setPoint = 50;
  int32_t dt = 5000;
  int32_t debug = 0;
    
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
    getNumber (argv[4], &debug);
  }
  
  MotorModel_t m;
  MotorModel_t* motor = &m;
  motorInit(motor);
  
  pidData_t pd;
  pidData_t* pid = &pd;
  pid_Init(p, i, d, pid);
//  if(debug) {
//    pidDebug = 1;
//  }
  
  int j;
  motorStart(motor, 0);
  int32_t motorTargetFrequency = 0;
  for(j = 0; j < 5000000; j+=5000) {
    motorStep(motor, j);
    int32_t controlAction = pid_Controller(setPoint, motor->pulses, pid);
    motorTargetFrequency = controlAction;//motorTargetFrequency + controlAction;
    if(motorTargetFrequency > 10000) {
      motorTargetFrequency = 10000;
    } else if(motorTargetFrequency < -10000) {
      motorTargetFrequency = 0;
    }
    motorSetTargetFrequency(motor, motorTargetFrequency);
    printf("%d%s", motor->pulses, CFG_PRINTF_NEWLINE);
  }
}
