/*This file has been prepared for Doxygen automatic documentation generation.*/
/*! \file *********************************************************************
 *
 * \brief Header file for pid.c.
 *
 * - File:               pid.h
 * - Compiler:           IAR EWAAVR 4.11A
 * - Supported devices:  All AVR devices can be used.
 * - AppNote:            AVR221 - Discrete PID controller
 *
 * \author               Atmel Corporation: http://www.atmel.com \n
 *                       Support email: avr@atmel.com
 *
 * $Name$
 * $Revision: 456 $
 * $RCSfile$
 * $Date: 2006-02-16 12:46:13 +0100 (to, 16 feb 2006) $
 *****************************************************************************/

#ifndef PID_H
#define PID_H

#include "stdint.h"

#define SCALING_FACTOR  1000

/*! \brief PID Status
 *
 * Setpoints and data used by the PID control algorithm
 */
typedef struct PID_DATA{
  //! Last process value, used to find derivative of process value.
  int32_t lastProcessValue;
  //! Summation of errors, used for integrate calculations
  int32_t sumError;
  //! The Proportional tuning constant, multiplied with SCALING_FACTOR
  int32_t P_Factor;
  //! The Integral tuning constant, multiplied with SCALING_FACTOR
  int32_t I_Factor;
  //! The Derivative tuning constant, multiplied with SCALING_FACTOR
  int32_t D_Factor;
  //! Maximum allowed error, avoid overflow
  int32_t maxError;
  //! Maximum allowed sumerror, avoid overflow
  int32_t maxSumError;
  uint8_t is_saturated;
} pidData_t;

pidData_t *pid;

/*! \brief Maximum values
 *
 * Needed to avoid sign/overflow problems
 */
// Maximum value of variables
#define MAX_INT         100000000
#define MAX_LONG        100000000
#define MAX_I_TERM      (MAX_LONG / 2)

uint8_t runSynchro;
uint8_t pidDebug;

void pid_Init(int32_t p_factor, int32_t i_factor, int32_t d_factor, struct PID_DATA *pid);
int32_t pid_Controller(int32_t setPoint, int32_t processValue, struct PID_DATA *pid_st);
void pid_Reset_Integrator(pidData_t *pid_st);

#endif
