#include <msp430g2231.h>

#define ADCresolution        10

static int analogPin1 = P1_1;
static int digitalPin = P1_7;
static int protocol[] = {1, 0, 1};                              //bits that signal the start of a new transmission

void setup() {  
  pinMode(digitalPin, OUTPUT);
}

void loop() {
  
  unsigned int ledCounts = analogRead(analogPin1);              //read ADC
  analogToSerial(ledCounts, protocol);
}

void analogToSerial(unsigned int counts, int protocol[3]) {
  unsigned int bitPeeler = 0x01;
  delayMicroseconds(14000);

  for (int i = 0; i < 3; i++) {                                 //transmit start bits first
    digitalWrite(digitalPin, protocol[i]);
    delayMicroseconds(1000);
  }

  for(int i = 1; i <= ADCresolution; i++) {                     //convert ADC reading into bits and transmit
    int bitToWrite = counts & bitPeeler;
    digitalWrite(digitalPin, bitToWrite);
    counts = counts >> 1;
    delayMicroseconds(1000);
  }
  
}
