#include "KEY.h"
#include "ls1x_latimer.h"
#include "ls1x_gpio.h"

void KEY_Init(void)
{
    gpio_set_direction(KEY1, GPIO_Mode_In);
    gpio_set_direction(KEY2, GPIO_Mode_In);
    gpio_set_direction(KEY3, GPIO_Mode_In);
    gpio_set_direction(KEY4, GPIO_Mode_In);
}

uint8_t KEY_Scan(void)
{
    uint8_t key_Flag = 0;
    if (!gpio_get_pin(KEY1))
    {
        delay_ms(10);
        if (!gpio_get_pin(KEY1))
            key_Flag = 1;
        // 等待按键释放
        while (!gpio_get_pin(KEY1));
    }
    else if (!gpio_get_pin(KEY2))
    {
        delay_ms(10);
        if (!gpio_get_pin(KEY2))
            key_Flag = 2;
        // 等待按键释放
        while (!gpio_get_pin(KEY2));
    }
    else if (!gpio_get_pin(KEY3))
    {
        delay_ms(10);
        if (!gpio_get_pin(KEY3))
            key_Flag = 3;
        // 等待按键释放
        while (!gpio_get_pin(KEY3));
    }
    else if (!gpio_get_pin(KEY4))
    {
        delay_ms(10);
        if (!gpio_get_pin(KEY4))
            key_Flag = 4;
        // 等待按键释放
        while (!gpio_get_pin(KEY4));
    }
    return key_Flag;
}