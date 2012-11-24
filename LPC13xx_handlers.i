# 1 "lpc1xxx/LPC13xx_handlers.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "lpc1xxx/LPC13xx_handlers.c"
# 46 "lpc1xxx/LPC13xx_handlers.c"
void irq_undefined() {

  while(1);
}

void I2C_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void TIMER16_0_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void TIMER16_1_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void TIMER32_0_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void TIMER32_1_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void SSP_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void UART_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void USB_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void USB_FIQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void ADC_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void WDT_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void BOD_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void FMC_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void PIOINT3_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void PIOINT2_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void PIOINT1_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void PIOINT0_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;
void WAKEUP_IRQHandler(void) __attribute__ ((weak, alias ("irq_undefined")));;






void fault_undefined() {

  while(1);
}

void NMI_Handler(void) __attribute__ ((weak, alias ("fault_undefined")));;
void HardFault_Handler(void) __attribute__ ((weak, alias ("fault_undefined")));;
void MemManage_Handler(void) __attribute__ ((weak, alias ("fault_undefined")));;
void BusFault_Handler(void) __attribute__ ((weak, alias ("fault_undefined")));;
void UsageFault_Handler(void) __attribute__ ((weak, alias ("fault_undefined")));;
void SVCall_Handler(void) __attribute__ ((weak, alias ("fault_undefined")));;
void DebugMon_Handler(void) __attribute__ ((weak, alias ("fault_undefined")));;
void PendSV_Handler(void) __attribute__ ((weak, alias ("fault_undefined")));;
void SysTick_Handler(void) __attribute__ ((weak, alias ("fault_undefined")));;







extern void* stack_entry;
extern void boot_entry(void);




const void *vectors[] __attribute__ ((section(".irq_vectors"))) =
{

  &stack_entry,
  boot_entry,


  NMI_Handler,
  HardFault_Handler,
  MemManage_Handler,
  BusFault_Handler,
  UsageFault_Handler,
  0,
  0,
  0,
  0,
  SVCall_Handler,
  DebugMon_Handler,
  0,
  PendSV_Handler,
  SysTick_Handler,


  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,
  WAKEUP_IRQHandler,


  I2C_IRQHandler,
  TIMER16_0_IRQHandler,
  TIMER16_1_IRQHandler,
  TIMER32_0_IRQHandler,
  TIMER32_1_IRQHandler,
  SSP_IRQHandler,
  UART_IRQHandler,
  USB_IRQHandler,
  USB_FIQHandler,
  ADC_IRQHandler,
  WDT_IRQHandler,
  BOD_IRQHandler,
  FMC_IRQHandler,
  PIOINT3_IRQHandler,
  PIOINT2_IRQHandler,
  PIOINT1_IRQHandler,
  PIOINT0_IRQHandler,
};
