#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "projectconfig.h"
#include "sysinit.h"

#include "core/gpio/gpio.h"
#include "core/systick/systick.h"

#ifdef CFG_INTERFACE
  #include "core/cmd/cmd.h"
#endif

#include "core/uart/uart.h"

#define MAX_DMX_CHANNELS 256
volatile uint8_t dmxChannels[MAX_DMX_CHANNELS]={0};

int main(void)
{
  systemInit();
  uartInit(250000);

  uint32_t currentSecond, lastSecond;
  currentSecond = lastSecond = 0;
  
  
  int i;
  
  for(i = 0; i < MAX_DMX_CHANNELS; i++) {
    dmxChannels[i] = 0;
  }
  
  
  while (1)
  {
    currentSecond = systickGetSecondsActive();
    if (currentSecond != lastSecond)
    {
      lastSecond = currentSecond;
      gpioSetValue(CFG_LED_PORT, CFG_LED_PIN, lastSecond % 2);
    }

    for(i = 0; i < MAX_DMX_CHANNELS; i++) {
      dmxChannels[i] ++;
    }
    uartSend (dmxChannels, MAX_DMX_CHANNELS);
    
    #ifdef CFG_INTERFACE 
      cmdPoll(); 
    #endif
  }

  return 0;
}
