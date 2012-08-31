#ifndef _16101_SERIAL_H_
#define _16101_SERIAL_H_

#include <core/ssp/ssp.h>
#include <core/systick/systick.h>
int LCDInit();
int LCDWrite(void *buf, int length);
#endif
