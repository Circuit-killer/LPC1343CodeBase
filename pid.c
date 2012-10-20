/*This file has been prepared for Doxygen automatic documentation generation.*/
/*! \file *********************************************************************
 *
 * \brief General PID implementation for AVR.
 *
 * Discrete PID controller implementation. Set up by giving P/I/D terms
 * to Init_PID(), and uses a struct PID_DATA to store internal values.
 *
 * - File:               pid.c
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

#include "pid.h"
#include "stdint.h"
#include "projectconfig.h"


/*! \brief Initialisation of PID controller parameters.
 *
 *  Initialise the variables used by the PID algorithm.
 *
 *  \param p_factor  Proportional term.
 *  \param i_factor  Integral term.
 *  \param d_factor  Derivate term.
 *  \param pid  Struct with PID status.
 */
void pid_Init(int32_t p_factor, int32_t i_factor, int32_t d_factor, struct PID_DATA *pid)
// Set up PID controller parameters
{
  // Start values for PID controller
  pid->sumError = 0;
  pid->lastProcessValue = 0;
  // Tuning constants for PID loop
  pid->P_Factor = p_factor;
  pid->I_Factor = i_factor;
  pid->D_Factor = d_factor;
  // Limits to avoid overflow
  pid->maxError = MAX_INT / (pid->P_Factor + 1);
  pid->maxSumError = MAX_I_TERM / (pid->I_Factor + 1);
  pid->is_saturated = 0;
  pidDebug = 0;
}

#define SATURATION_LIMIT_TOP 10000
#define SATURATION_LIMIT_BOT -10000

/*! \brief PID control algorithm.
 *
 *  Calculates output from setpoint, process value and PID status.
 *
 *  \param setPoint  Desired value.
 *  \param processValue  Measured value.
 *  \param pid_st  PID status struct.
 */
int32_t pid_Controller(int32_t setPoint, int32_t processValue, struct PID_DATA *pid_st)
{
  int32_t error = 0, p_term = 0, d_term = 0;
  int32_t i_term = 0, ret = 0, temp = 0;

  error = setPoint - processValue;

  p_term = pid_st->P_Factor * error;
  
  if(!pid_st->is_saturated || (SATURATION_LIMIT_TOP == pid_st->is_saturated && error < 0) || (SATURATION_LIMIT_BOT == pid_st->is_saturated && error > 0)) {
    pid_st->sumError += error;
  }
  i_term = pid_st->I_Factor * pid_st->sumError/100;

  d_term = pid_st->D_Factor * (pid_st->lastProcessValue - processValue);
  pid_st->lastProcessValue = processValue;

  ret = (p_term + i_term + d_term) / SCALING_FACTOR;
  
  if(ret > SATURATION_LIMIT_TOP){
    ret = SATURATION_LIMIT_TOP;
//    printf(" +SAT ");
    pid_st->is_saturated = SATURATION_LIMIT_TOP;
  } else if(ret < SATURATION_LIMIT_BOT){
    ret = SATURATION_LIMIT_BOT;
//    printf(" -SAT ");
    pid_st->is_saturated = SATURATION_LIMIT_BOT;
  } else {
    pid_st->is_saturated = 0;
  }
  
  if(runSynchro || pidDebug){
    printf("e:%4d P:%9d I:%9d D:%5d||%6d ", error, p_term, i_term, d_term, ret);
  }
  return((int16_t)ret);
}

/*! \brief Resets the integrator.
 *
 *  Calling this function will reset the integrator in the PID regulator.
 */
void pid_Reset_Integrator(pidData_t *pid_st)
{
  pid_st->sumError = 0;
}
