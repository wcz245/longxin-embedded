#include "ultrasonic.h"

uint8_t display[20];
uint16_t show_time     = 0;
uint32_t status     = 0;    // 计数值
uint32_t real_time     = 0;    // 读回值
uint32_t dis_temp         = 0;    // 距离计算值
uint32_t show_distance = 0;
uint16_t current_distance = 0;  // 添加当前距离变量用于ZigBee传输

void Ultrasonic_Hardware_Init(void)
{
    gpio_pin_remap(Ultrasonic_IN_Pin, GPIO_FUNC_GPIO);
    gpio_pin_remap(Ultrasonic_OUT_Pin, GPIO_FUNC_GPIO);
    gpio_set_direction(Ultrasonic_IN_Pin, GPIO_Mode_Out);
    gpio_set_direction(Ultrasonic_OUT_Pin, GPIO_Mode_In);
}

void Ultrasonic_Software_Init(void)
{
    Timer_Init(100);    //计数100us  
    gpio_set_direction(Ultrasonic_OUT_Pin, GPIO_Mode_In);
    EXTI_InitTypeDef exti_gpio;
    exti_gpio.EXTI_GPIO = IRQ_GPIO_A5;
    exti_gpio.EXTI_Mode = EXTI_Mode_Edge;
    exti_gpio.EXTI_Trigger = EXTI_Trigger_Falling_Low;
    exti_gpio.EXTI_GpioCmd = ENABLE;
    
    EXTI_Init(EXTI, &exti_gpio);
}

void Ultrasonic_Init(void)
{
    Ultrasonic_Hardware_Init();
    Ultrasonic_Software_Init();
}


tsTimeType Ultrasonic_ts;

void Ultrasonic_Test(void)
{
    uint8_t i = 0;
    uint16_t y = 0;
    static uint16_t distance = 0;

    TIM_Cmd(ENABLE);                        //使能定时器1
    status  = 0;                                // 定时器清零
    for(i=0;i<8;i++)
    {
        gpio_write_pin(Ultrasonic_IN_Pin, 1);
        for(y=0;y<8;y++);
        gpio_write_pin(Ultrasonic_IN_Pin, 0);
        for(y=0;y<8;y++);
    }

    delay_ms(20);

    if(show_time >= 10)    //采集十次以上获得平均值
    {
        distance = show_distance / show_time - 6;  // 减去5作为校准值
        current_distance = distance;  // 更新当前距离值
        
        sprintf(display,"%5d CM    ",distance);    //float转string,(单位cm)
        OLED_Show_Str(24*1,4,display,16);
        printf("%5d CM    ",distance);

        if(distance < 15)
        {
            BEEP_ON;
            delay_ms(distance*10);
            BEEP_OFF;
            delay_ms(distance*10);
        }
        show_time         = 0;
        show_distance    = 0;
    }
}