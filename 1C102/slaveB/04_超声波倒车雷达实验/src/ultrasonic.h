#ifndef __ultrasonic_H_
#define __ultrasonic_H_

#include <Config.h>
#include "ls1x.h"
#include "ls1x_gpio.h"    
#include "ls1x_latimer.h"
#include "ls1c102_ptimer.h"
#include "ls1x_exti.h"
#include "../user/ls1c102/oled.h"
#include "BEEP.h"

#define Ultrasonic_OUT_Pin          GPIO_PIN_5
#define Ultrasonic_IN_Pin           GPIO_PIN_4

extern uint32_t    status;        // 计数值
extern uint32_t    real_time;    // 读回值
extern uint32_t dis_temp;    // 距离计算值
extern uint16_t show_time;
extern uint32_t show_distance;
extern uint16_t current_distance;  // 添加当前距离变量声明

void Ultrasonic_Init(void);
void Ultrasonic_Test(void);
uint8_t Ultrasonic_Get(void);
#endif