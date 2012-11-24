# 1 "lpc1xxx/LPC1xxx_startup.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "lpc1xxx/LPC1xxx_startup.c"
# 32 "lpc1xxx/LPC1xxx_startup.c"
extern unsigned char _etext;
extern unsigned char _data;
extern unsigned char _edata;
extern unsigned char _bss;
extern unsigned char _ebss;


extern void main(void);



void boot_entry(void)
{
  register unsigned char *src, *dst;


  src = &_etext;
  dst = &_data;
  while(dst < &_edata) {
    *dst++ = *src++;
  }


  dst = &_bss;
  while(dst < &_ebss) {
    *dst++ = 0;
  }


  main();


  while(1);
}
