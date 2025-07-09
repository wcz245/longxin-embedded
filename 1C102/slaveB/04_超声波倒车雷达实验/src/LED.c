#include "LED.h"
#include "ls1x_gpio.h"

void LED_Init(void)
{
    gpio_set_direction(LED1, GPIO_Mode_Out);
    gpio_set_direction(LED2, GPIO_Mode_Out);
    gpio_set_direction(LED3, GPIO_Mode_Out);
    gpio_set_direction(LED4, GPIO_Mode_Out);
}