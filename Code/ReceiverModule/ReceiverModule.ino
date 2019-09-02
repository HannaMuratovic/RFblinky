#include <msp430g2231.h>

#define NUM_SIGNAL_BITS       10

static int digitalPin = P1_0;
static int LED1 = P1_1;
static int LED2 = P1_2;
static int LED3 = P1_3;
static int LED4 = P1_4;
static int LED5 = P1_5;

void setup() {
  pinMode(digitalPin, INPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
}


void loop() {
  unsigned int buffer[NUM_SIGNAL_BITS];
  for (int i = 0; i < NUM_SIGNAL_BITS; i++) {                                //initialize buffer to zero
    buffer[i] = 0;
  }
  
  bool startFlag = false;
  while(!startFlag) {
    startFlag =  startTransmission(buffer);                                 //wait for the start bits to indicate a new stream of data
  }
  
  LEDcontrol(buffer);
}

void LEDoff() {                                                            //turns all LEDs off
  digitalWrite(LED1, LOW);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, LOW);
  digitalWrite(LED4, LOW);
  digitalWrite(LED5, LOW);
}
 
bool startTransmission(unsigned int buffer[NUM_SIGNAL_BITS]) {             //looks for the protocol pattern before attempting to read the data bitstream   
    if (digitalRead(digitalPin) == HIGH) {
      delayMicroseconds(1000);
      if(digitalRead(digitalPin) == LOW) {
        delayMicroseconds(1000);
        if (digitalRead(digitalPin) == HIGH) {
          delayMicroseconds(1000);
          fillBuffers(buffer);
          return true;
        }
      }
    }
    return false;
}

void fillBuffers(unsigned int buffer[10]) {                                 //fills the buffer with the data bitstream
  for (int i = 0; i < NUM_SIGNAL_BITS; i++) {
    buffer[i] = digitalRead(digitalPin);
    delayMicroseconds(1000);
  }
}

void LEDcontrol(unsigned int buffer[10]) {      

  unsigned int ledCounts = 0x00;                                            //converts bits in buffer into a decimal number
  for (int i = 0; i < NUM_SIGNAL_BITS; i++) {
    unsigned int ledBit = buffer[i] << i;
    ledCounts = ledCounts | ledBit;
  }

  LEDoff();

  if (ledCounts > 50) {                                                     //turns on each LED based on the decimal number
    digitalWrite(LED1, HIGH);
  }

  if (ledCounts > 204) {
    digitalWrite(LED2, HIGH);
  }

  if (ledCounts > 408) {
    digitalWrite(LED3, HIGH);
  }

  if (ledCounts > 612) {
    digitalWrite(LED4, HIGH);
  }

  if (ledCounts > 816) {
    digitalWrite(LED5, HIGH);
  }
}
