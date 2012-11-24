#include <stdio.h>

#include "projectconfig.h"
#include "core/cmd/cmd.h"
#include "project/commands.h"       // Generic helper functions

#include "dmx.h"

/**************************************************************************/
/*! 
    PWM command handler
*/
/**************************************************************************/
uint8_t pwmStarted = 0;

void cmd_dmx(uint8_t argc, char **argv) {
  int32_t channel = 0;
  int32_t value = 0;

  getNumber (argv[0], &channel);
  if(channel < 0 || channel > MAX_DMX_CHANNELS) 
  {
    printf("Invalid channel, must be [0..%d]%s", MAX_DMX_CHANNELS, CFG_PRINTF_NEWLINE);
    return;
  }

  getNumber (argv[1], &value);
  if(value < 0 || value > 255) 
  {
    printf("Invalid value, must be [0..255]%s", CFG_PRINTF_NEWLINE);
    return;
  }

  printf("Setting dmx channel %d to %d%s", channel, value, CFG_PRINTF_NEWLINE);

  dmxChannels[channel] = value;
}
