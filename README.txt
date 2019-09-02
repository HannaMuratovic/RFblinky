I created this project to gain a better understanding of RF and microcontrollers. In the transmitter module, 
a microcontroller measures the voltage across a potentiometer (using an ADC). The micro then converts the 
count value read from the ADC into a serial stream of bits. This is because the transmitter IC uses ASK 
modulation to transmit data. In the receiver module, another microcontroller reads the incoming bitstream, 
stores each bit in a buffer, and converts the stored binary number into a decimal value. This value is used 
to determine which LED to turn on.