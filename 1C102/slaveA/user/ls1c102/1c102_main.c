#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "ls1c102_interrupt.h"
#include "iic.h"
#include "oled.h"
#include "dht11.h"
#include "BEEP.h"
#include "key.h"
#include "led.h"
#include "ls1c102_adc.h"
#include "queue.h"
#include "ZigBee.h"

#define LED 200
#define fan GPIO_PIN_37      // 风扇引脚
#define RELAY GPIO_PIN_34    // 继电器引脚
#define BULB1 GPIO_PIN_16    // 灯泡1引脚
#define BULB2 GPIO_PIN_17    // 灯泡2引脚

char str[50];
static uint16_t temperature;
static uint16_t humidity;
int AlcoholLevel = 0;  // 酒精浓度标志
unsigned short value;  // ADC采集值
uint8_t data[9];       // 数据上云平台的数据包

// 定义显示状态
#define DISPLAY_NORMAL 0
#define DISPLAY_ALERT  1
int displayState = DISPLAY_NORMAL;

int main(int arg, char *args[])
{
    SystemClockInit();
    GPIOInit();
    OLED_Init();
    KEY_Init();
    EnableInt();
    DL_LN3X_Init(DL_LN3X_NODE, CHANNEL, Network1_Id);
    Queue_Init(&Circular_queue);

    // 修改为ADC通道4（对应MQ-3传感器）
    AFIO_RemapConfig(AFIOB, GPIO_Pin_14, 0); // 使用通道4引脚
    Adc_powerOn();
    Adc_open(ADC_CHANNEL_I4);  // 开启ADC通道4

    // 初始化控制引脚
    gpio_set_direction(fan, GPIO_Mode_Out);
    gpio_set_direction(RELAY, GPIO_Mode_Out);
    gpio_set_direction(BULB1, GPIO_Mode_Out);
    gpio_set_direction(BULB2, GPIO_Mode_Out);
    
    // 初始关闭所有设备
    gpio_write_pin(fan, 0);
    gpio_write_pin(RELAY, 0);
    gpio_write_pin(BULB1, 0);
    gpio_write_pin(BULB2, 0);

    BEEP_Init();
    Uart0_init(9600);

    while (DHT11_Init())
    {
        OLED_Show_Str(10, 4, "Sensorless", 16);
    }
    
    // 初始显示三行（正常状态）
    OLED_Show_Str(1, 0, "Alcohol Normal", 16);  // 第0行
    OLED_Show_Str(1, 2, "Temp:      ℃", 16);     // 第2行
    OLED_Show_Str(1, 4, "Humi:      %RH", 16);   // 第4行

    while (1)
    {
        // 读取温湿度数据（每次循环都读取）
        DHT11_Read_Data(&temperature, &humidity);
        
        // 酒精浓度检测（MQ-3传感器）
        value = Adc_Measure(ADC_CHANNEL_I4);
        
        // 湿度控制逻辑（无论酒精状态如何）
        if (humidity / 10 > 65) {  // 湿度超过65%
            gpio_write_pin(RELAY, 1);  // 启动继电器
            gpio_write_pin(BULB1, 1); // 启动灯泡1
        } else {
            gpio_write_pin(RELAY, 0);  // 关闭继电器
            gpio_write_pin(BULB1, 0);  // 关闭灯泡1
        }
        
        // 根据酒精浓度值切换显示状态
        if (value > 3700) {
            // 切换到警报显示模式
            if (displayState != DISPLAY_ALERT) {
                OLED_Clear();  // 清除屏幕
                OLED_Show_Str(1, 0, "Alcohol High!!", 16);  // 第0行
                displayState = DISPLAY_ALERT;
            }
            
            // 更新酒精浓度值显示
            sprintf(str, "Alc: %4dmV", value);
            OLED_Show_Str(1, 2, str, 16);
            
            // 触发蜂鸣器、风扇和灯泡2（酒精浓度高）
            if (value >= 4000) {
                BEEP_ON;
                gpio_write_pin(fan, 1);    // 启动风扇
                gpio_write_pin(BULB2, 1);  // 启动灯泡2
            } else {
                BEEP_OFF;
                gpio_write_pin(fan, 0);    // 关闭风扇
                gpio_write_pin(BULB2, 0);  // 关闭灯泡2
            }
            AlcoholLevel = 1;
        } 
        else {
            // 切换到正常显示模式
            if (displayState != DISPLAY_NORMAL) {
                OLED_Clear();  // 清除屏幕
                OLED_Show_Str(1, 0, "Alcohol Normal", 16);  // 第0行
                OLED_Show_Str(1, 2, "Temp:      ℃", 16);     // 第2行
                OLED_Show_Str(1, 4, "Humi:      %RH", 16);   // 第4行
                displayState = DISPLAY_NORMAL;
            }
            
            // 更新温湿度显示
            sprintf(str, "%2d", temperature / 10);
            OLED_Show_Str(70, 2, str, 16);  // 温度值
            sprintf(str, "%2d", humidity / 10);
            OLED_Show_Str(70, 4, str, 16);  // 湿度值
            
            // 关闭酒精相关的设备
            BEEP_OFF;
            gpio_write_pin(fan, 0);    // 关闭风扇
            gpio_write_pin(BULB2, 0);  // 关闭灯泡2
            AlcoholLevel = 0;
        }

        // 更新数据包内容
        data[0] = 0x02;             // 设备ID
        data[1] = temperature / 256;
        data[2] = temperature % 256;
        data[3] = humidity / 256;
        data[4] = humidity % 256;
        data[5] = (value >> 8) & 0xFF;
        data[6] = value & 0xFF;
        data[7] = AlcoholLevel;     // 报警状态

        delay_ms(222);
        DL_LN3X_Send(data, 9, ZIGBEE_RX_NODE);
    }

    return 0;
}