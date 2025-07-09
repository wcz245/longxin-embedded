#include "ls1x.h"
#include "ls1x_gpio.h"
#include "ls1x_wdg.h"
#include "ls1x_common.h"
#include "ls1x_exti.h"
#include "ls1c102_interrupt.h"
#include "ls1c102_touch.h"
#include "ls1c102_ptimer.h"
#include "ls1c102_i2c.h"
#include "ls1x_uart.h"
#include "Config.h"
#include "queue.h"
#include "ultrasonic.h"


#define BEBUG_IRQ() printf("\r\n < IRQ: %d func:%s   >\r\n", __LINE__, __FUNCTION__)
void (*const exti_irq_handle[32])(void);

void exti_gpioa0_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_A0);
}
void exti_gpioa1_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_A1);
}
void exti_gpioa2_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_A2);
}
void exti_gpioa3_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_A3);
}
void exti_gpioa4_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_A4);
}
void exti_gpioa5_irq_handler(void)
{
    // BEBUG_IRQ();
    TIM_Cmd(DISABLE);									//关使能定时器1
    
    show_time++;
    real_time = status;
    dis_temp=(real_time*17)/10;      	//计算距离	定时100us，S=Vt/2（减2是误差补尝）单位：cm
    show_distance += dis_temp;
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_A5);
}
void exti_gpioa6_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_A6);
}
void exti_gpioa7_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_A7);
}
void exti_gpiob0_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_B0);
}
void exti_gpiob1_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_B1);
}
void exti_gpiob2_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_B2);
}
void exti_gpiob3_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_B3);
}
void exti_gpiob4_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_B4);
}
void exti_gpiob5_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_B5);
}
void exti_gpiob6_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_B6);
}
void exti_gpiob7_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_B7);
}

void exti_gpioc0_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_C0);
}
void exti_gpioc1_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_C1);
}
void exti_gpioc2_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_C2);
}
void exti_gpioc3_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_C3);
}
void exti_gpioc4_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_C4);
}
void exti_gpioc5_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_C5);
}
void exti_gpioc6_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_C6);
}
void exti_gpioc7_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_C7);
}
void exti_gpiod0_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_D0);
}
void exti_gpiod1_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_D1);
}
void exti_gpiod2_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_D2);
}
void exti_gpiod3_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_D3);
}
void exti_gpiod4_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_D4);
}

void exti_gpiod5_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_D5);
}
void exti_gpiod6_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_D6);
}
void exti_gpiod7_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_D7);
}
void (*const Ext_IrqHandle[32])(void) =
    {
        exti_gpioa0_irq_handler,
        exti_gpioa1_irq_handler,
        exti_gpioa2_irq_handler,
        exti_gpioa3_irq_handler,
        exti_gpioa4_irq_handler,
        exti_gpioa5_irq_handler,
        exti_gpioa6_irq_handler,
        exti_gpioa7_irq_handler,
        exti_gpiob0_irq_handler,
        exti_gpiob1_irq_handler,
        exti_gpiob2_irq_handler,
        exti_gpiob3_irq_handler,
        exti_gpiob4_irq_handler,
        exti_gpiob5_irq_handler,
        exti_gpiob6_irq_handler,
        exti_gpiob7_irq_handler,
        exti_gpioc0_irq_handler,
        exti_gpioc1_irq_handler,
        exti_gpioc2_irq_handler,
        exti_gpioc3_irq_handler,
        exti_gpioc4_irq_handler,
        exti_gpioc5_irq_handler,
        exti_gpioc6_irq_handler,
        exti_gpioc7_irq_handler,
        exti_gpiod0_irq_handler,
        exti_gpiod1_irq_handler,
        exti_gpiod2_irq_handler,
        exti_gpiod3_irq_handler,
        exti_gpiod4_irq_handler,
        exti_gpiod5_irq_handler,
        exti_gpiod6_irq_handler,
        exti_gpiod7_irq_handler,
};

void ext_handler(void)
{
    PMU_CMDW = (1 << 24);
    INT32U regsrc; // = EXTI->EXINT_SRC;
    INT32U regen;  // = EXTI->EXINT_SRC;
    INT32U irq_no;
    // BEBUG_IRQ();
    regsrc = EXTI->EXINT_SRC;
    regen = EXTI->EXINT_EN;
    regsrc = (regsrc & regen);
    asm("nop");

    for (irq_no = 0; irq_no < 32; irq_no++)
    {
        if ((regsrc >> irq_no) & 0x1)
        {
            Ext_IrqHandle[irq_no]();
        }
    }
}

void SOFT_INT(void)
{
    printf("\n.............SOFT_INT..............\n\r");
    Set_soft_stop();
}

/***********************************************************************
 函数功能:    	8M定时器中断处理函数
 @param:		无
 @other:     无
 @return:	无
 @auther :	朱晓宇
 @time	:	2020年4月9日
 ***********************************************************************/
void TIMER_8M_INT(void)
{
    PMU_CMDW = (1 << 21); // 清除中断标志
    Set_Timer_clear();
    Set_Timer_Init(8 * 10000); //  1.25ms
}

/***********************************************************************
 函数功能:    	定时唤醒中断处理函数
 @param:		无
 @other:     睡眠下定时喂狗，防止系统复位
 @return:	无
 @auther :	朱晓宇
 @time	:	2020年4月9日
 ***********************************************************************/
void TIMER_WAKE_INT(void)
{
    // printf("TIMER_WAKE_INT feed WDG!\n\r");
    PMU_CMDW = (1 << 16); // 清除中断标志
    INT32U SleepEn = PMU_CMDSTS & 0xffffffff;
    WDG_DogFeed();
    (void)SleepEn;
    // 睡眠后，定时喂狗，否则会不断重启
    Wake_Set(6); // 定时唤醒喂狗
}

/***********************************************************************
 函数功能:    	触摸按键中断处理函数
 @param:	无
 @other:        无
 @return:	无
 @auther :	朱晓宇
 @time	:	2020年4月9日
 ***********************************************************************/
#define KEY_CANCLE 8
void TOUCH(void)
{
    INT16U KeyChannel;
    INT8U KeyType;
    KeyChannel = (TS_STAT >> 16) & 0xfff;
    KeyType = TS_STAT & 0xf;
    PMU_CMDW = (1 << 17); // 清除中断标志
    TS_STAT = 0xf;

    Printf_KeyType(KeyType);
    Printf_KeyChannel(KeyChannel);
    Printf_KeyVal();
}

/***********************************************************************
 函数功能:    	串口2接收中断处理函数
 @param:		无
 @other:     无
 @return:	无
 @auther :	朱晓宇
 @time	:	2020年4月9日
 ***********************************************************************/
void UART2_INT(void)
{
    PMU_CMDW = (1 << 18);
    INT8U uart_sr = UART2_IIR;
    (void)uart_sr;
}

/***********************************************************************
 函数功能:    	电量检测中断处理函数
 @param:		无
 @other:     该中断可查看用户手册
 @return:	无
 @auther :	朱晓宇
 @time	:	2020年4月9日
 ***********************************************************************/
void BAT_FAIL(void)
{
    uint32_t tmp = (PMU_CMDSTS & 0xf80000) >> 19;
    PMU_CMDW = (PMU_CMDSTS & 0xf80000);
    switch (tmp)
    {
    case 0x1:
        printf("\r\n.............BAT_FAIL..............\r\n");
        PMU_CMDSTS = 0x0; // IT config
        break;
    case 0x2:
        break;
    case 0x4:
        break;
    case 0x8:
        break;
    case 0x10:
        printf("\r\n.............ADC..............\r\n");
        PMU_CMDSTS &= (~0x8000); // IT dis
        break;
    default:
        break;
    }
}

void INTC(void)
{
}

void RING(void)
{
}

/***********************************************************************
 函数功能:    	INTC中断处理函数
 @param:		无
 @other:     该中断可查看用户手册
 @return:	无
 @auther :	朱晓宇
 @time	:	2020年4月9日
 ***********************************************************************/
uint8_t Read_Buffer[255]; // 设置接收缓冲数组
uint8_t Read_length;
bool state = 1;
void intc_handler(void)
{
    
    static uint8_t receive_Data;
    INT8U IntReg = INT_OUT;

    if (IntReg & IRQ_TIMER) // Timer
    {
        if (TIM_GetITStatus(TIM_FLAG_Trigger))
        {
            status++;
            // if(status%100==0){
            //     state = ~state; // led灯电平翻转
            //     gpio_write_pin(GPIO_PIN_20, state);
            // }

            TIM_ClearIT(TIM_FLAG_Trigger);
        }
    }
    if (IntReg & UART0_INT_OUT) // Uart0
    {
        if (UART0_IIR & 0x04)
        {
            while (UART0_LSR & 0x1)
            {
                receive_Data = UART_ReceiveData(UART0);                    // 接收数据
                Queue_Wirte(&Circular_queue, (uint8_t *)&receive_Data, 1); // 向队列中写入数据
                if (Queue_isEmpty(&Circular_queue) == 0)                   // 判断队列是否为空，即判断是否收到数据
                {
                    Read_length = Queue_HadUse(&Circular_queue); // 返回队列中数据的长度
                    Queue_Read(&Circular_queue, Read_Buffer, Read_length); // 读取队列缓冲区的值到接收缓冲区
                    
                }
                else
                {
                    memset(Read_Buffer, 0, DATA_LEN); // 填充接收缓冲区为0
                }
                INT_CLR = UART0_INT_CLR;
            }
        }
    }
    INT_CLR = 0xff;
}

void TIMER_HANDLER(void)
{
    Set_Timer_clear();
    printf("Core Timer clear interrupt..\r\n");
    Set_Timer_stop();
}
