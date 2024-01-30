
#include "pic24_all.h"
#include <stdio.h>
#define  trigger LATBbits.LATB14


volatile uint16_t u16_oflowCount = 0;

//Interrupt Service Routine for Timer2
void _ISRFAST _T2Interrupt (void) {
  u16_oflowCount++;
  _T2IF = 0;                 //clear the timer interrupt bit
}

typedef enum  {
  STATE_WAIT_FOR_RISE_EDGE = 0,
  STATE_WAIT_FOR_FALL_EDGE,
} ICSTATE;

ICSTATE e_isrICState = STATE_WAIT_FOR_RISE_EDGE;
volatile uint8_t u8_captureFlag = 0;
volatile uint16_t u16_lastCapture;
volatile uint16_t u16_thisCapture;
volatile uint32_t u32_pulseWidth;

volatile float distance=0;

void _ISRFAST _IC1Interrupt() {
  _IC1IF = 0;
  u16_thisCapture = IC1BUF;  //always read the buffer to prevent overflow
  switch (e_isrICState) {
    case STATE_WAIT_FOR_RISE_EDGE:
      if (u8_captureFlag == 0) {
        if (u16_thisCapture == 0 && _T2IF) u16_oflowCount = 0 -1; //simultaneous timer with capture
        else u16_oflowCount = 0;
        u16_lastCapture = u16_thisCapture;
        e_isrICState = STATE_WAIT_FOR_FALL_EDGE;
      }
      break;
    case STATE_WAIT_FOR_FALL_EDGE:
      if (u16_thisCapture == 0 && _T2IF) u16_oflowCount++; //simultaneous interrupt, increment oflow count
      u32_pulseWidth = computeDeltaTicksLong(u16_lastCapture,u16_thisCapture,PR2, u16_oflowCount); //get delta ticks
      u32_pulseWidth = ticksToUs(u32_pulseWidth,getTimerPrescale(T2CONbits)); //convert to microseconds
      distance=u32_pulseWidth * 0.017219;
      u8_captureFlag = 1;
      e_isrICState = STATE_WAIT_FOR_RISE_EDGE;
      break;
    default:
      e_isrICState = STATE_WAIT_FOR_RISE_EDGE;
  }
}

// Capture input configuration
 void CONFIG_capture_input()  {
  CONFIG_RB13_AS_DIG_INPUT();     //use RB13 for switch input
  //ENABLE_RB13_PULLUP();           //enable the pull-up
  //ENABLE_RB13_OPENDRAIN();
  DELAY_US(1);            //delay for pull-up
}

 void CONFIG_Trig()  {
  CONFIG_RB14_AS_DIG_OUTPUT();     //use RB14 for trigger output
  trigger=0;
}


void configInputCapture1(void) {
  CONFIG_IC1_TO_RP(RB13_RP);      //map IC1 to RB13
#ifdef IC1CON                  //older familes
  IC1CON = IC_TIMER2_SRC |     //Timer2 source
           IC_INT_1CAPTURE |   //Interrupt every capture
           IC_EVERY_EDGE;      //Capture every edge
#endif
#ifdef IC1CON1                  //PIC24E/dsPIC33E
  IC1CON1 = IC_TIMER2_SRC |     //Timer2 source
            IC_INT_1CAPTURE |   //Interrupt every capture
            IC_EVERY_EDGE;      //Capture every edge
  //      cascade off, sync mode, sync to timer 2
  IC1CON2 = IC_IC32_OFF| IC_SYNC_MODE | IC_SYNCSEL_TIMER2;
#endif
  _IC1IF = 0;
  _IC1IP = 2;   //higher than Timer2 so that Timer2 does not interrupt IC1
  _IC1IE = 1;   //enable

}

void  configTimer2(void) {
  T2CON = T2_OFF | T2_IDLE_CON | T2_GATE_OFF
          | T2_32BIT_MODE_OFF
          | T2_SOURCE_INT
          | T2_PS_1_8 ;  //1 tick = 0.2 us at FCY=40 MHz
  PR2 = 0xFFFF;                    //maximum period
  TMR2  = 0;                       //clear timer2 value
  _T2IF = 0;                       //clear interrupt flag
  _T2IP = 1;                       //choose a priority
  _T2IE = 1;                       //enable the interrupt
  T2CONbits.TON = 1;               //turn on the timer
}
void display_update()
{
        //distance=u32_pulseWidth * 0.017219;
        if(distance>4.00 && distance<399.00)          //Check whether the result is valid or not
                    {
                
                        printf("\n\r Distance=%.2f cm",distance);
                    }   
                    else
                    {
                        printf("\n\r Out of Range");
                    }   
}
void trigger_ultrasonic()
{
  trigger = 1;
  DELAY_US(15);
  trigger = 0;
}

int main (void) {

  configBasic(HELLO_MSG); //DEFAULT_BAUDRATE macro is 230,400,
  CONFIG_capture_input();    //use RB13
  CONFIG_Trig();             //use RB14
  configInputCapture1();
  configTimer2();
  //configDefaultUART(DEFAULT_BAUDRATE); //DEFAULT_BAUDRATE macro is 230,400,
  //outString(HELLO_MSG);


  while (1) {
    trigger_ultrasonic();
     
     //display_update();
     
    //outString("distance=");
    //while (!u8_captureFlag) doHeartbeat();
    //printf(" %ld us\n",u32_pulseWidth);
    DELAY_MS(300);
    display_update();
     while (!u8_captureFlag) doHeartbeat();
    u8_captureFlag = 0;
  }
}
