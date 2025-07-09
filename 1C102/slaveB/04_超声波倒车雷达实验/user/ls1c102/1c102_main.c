/************************************************************
 * 实验名称：超声波倒车雷达实验
 *
 * 实验准备：龙芯1C102开发板、超声波传感器模块
 *
 * 实验接线：龙芯1C102开发板 ----   超声波传感器模块
 *              P19        ----      P1
 *
 * 实验现象：OLED屏幕显示超声波传感器测距信息,小于15cm会鸣响报警
 ************************************************************/
#include "ls1x.h"
#include "ls1x_gpio.h"
#include "UserGpio.h"
#include "Config.h"
#include "ls1x_clock.h"
#include "ls1x_latimer.h"
#include "ls1c102_ptimer.h"
#include "LED.h"
#include "KEY.h"
#include "BEEP.h"
#include "oled.h"
#include "oledpic.h"
#include "ultrasonic.h"
#include "ZigBee.h"  // 添加ZigBee头文件

// 定义继电器和灯泡3的引脚
#define RELAY_PIN GPIO_PIN_16  // 继电器引脚
#define BULB3_PIN GPIO_PIN_17  // 灯泡3引脚

char str[30];
uint8_t key_value = 0;
bool states = 1;

// ZigBee相关定义
#define ULTRASONIC_DEVICE_ID 0x03  // 超声波设备ID设为0x03
uint8_t zigbee_data[3];            // ZigBee数据包

int main(int arg, char *args[])
{
    OLED_Init();       // OLED初始化
    BEEP_Init();       // 蜂鸣器初始化
    LED_Init();        // LED初始化
    KEY_Init();        // 按键初始化
    
    // 初始化继电器和灯泡3引脚
    gpio_set_direction(RELAY_PIN, GPIO_Mode_Out);
    gpio_set_direction(BULB3_PIN, GPIO_Mode_Out);
    gpio_write_pin(RELAY_PIN, 0);  // 初始关闭继电器
    gpio_write_pin(BULB3_PIN, 0);  // 初始关闭灯泡3
    
    // 初始化ZigBee模块
    DL_LN3X_Init(ULTRASONIC_DEVICE_ID, CHANNEL, Network1_Id);
    
    OLED_Show_Str(10*1,1,"超声波倒车雷达",16);
    Ultrasonic_Init();

    while(1)
    {
        Ultrasonic_Test();  
        
        // 当距离小于15cm时，开启继电器和灯泡3
        if (current_distance < 15) {
            gpio_write_pin(RELAY_PIN, 1);  // 开启继电器
            gpio_write_pin(BULB3_PIN, 1);  // 开启灯泡3
        } else {
            gpio_write_pin(RELAY_PIN, 0);  // 关闭继电器
            gpio_write_pin(BULB3_PIN, 0);  // 关闭灯泡3
        }
        
        // 准备ZigBee数据包
        zigbee_data[0] = ULTRASONIC_DEVICE_ID;  // 设备ID
        zigbee_data[1] = (current_distance >> 8) & 0xFF;  // 距离高字节
        zigbee_data[2] = current_distance & 0xFF;         // 距离低字节
        
        // 发送距离数据到ZigBee接收节点
        DL_LN3X_Send(zigbee_data, 3, ZIGBEE_RX_NODE);
        
        delay_ms(200);  // 发送间隔
    }
    return 0;
}