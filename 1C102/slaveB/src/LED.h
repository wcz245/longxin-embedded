#ifndef _LED_H_         //if no define 
#define _LED_H_

#include "ls1x.h"

#define LED1 GPIO_PIN_20
#define LED2 GPIO_PIN_28
#define LED3 GPIO_PIN_27
#define LED4 GPIO_PIN_26

#define LED1_CTRL(X) gpio_write_pin(LED1, X);
#define LED2_CTRL(X) gpio_write_pin(LED2, X);
#define LED3_CTRL(X) gpio_write_pin(LED3, X);
#define LED4_CTRL(X) gpio_write_pin(LED4, X);

void LED_Init(void);

#endif 


