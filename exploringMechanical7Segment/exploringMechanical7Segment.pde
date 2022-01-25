import processing.serial.*;
Serial myPort;
// Serial port name COM5
// 0 

void setup(){
  // Serial Port RS485
 for (int i=0; i<Serial.list().length; i++){
      System.out.println(Serial.list()[i]);
      System.out.println(i);
  }

 
  size(1000, 1000, JAVA2D);
  frameRate(15);
  // First COM port
  myPort = new Serial(this, Serial.list()[0], 57600);
}
void draw(){
  background(0);
 
 //       6
 //       _
 //    1 |_| 5
 //       0
 //    2 |_| 4
 //       3
 
  myPort.write(0x80);
  myPort.write(0x83);
  myPort.write(0x00);
  // R1
  myPort.write(byte(unbinary("1010101")));
  myPort.write(byte(unbinary("0101010")));
  myPort.write(byte(unbinary("1010101")));
  myPort.write(byte(unbinary("0101010")));
  myPort.write(byte(unbinary("1010101")));
  myPort.write(byte(unbinary("0101010")));
  myPort.write(byte(unbinary("1010101")));
  // R2
  myPort.write(byte(unbinary("0101010")));
  myPort.write(byte(unbinary("1010101")));
  myPort.write(byte(unbinary("0101010")));
  myPort.write(byte(unbinary("1010101")));
  myPort.write(byte(unbinary("0101010")));
  myPort.write(byte(unbinary("1010101")));
  myPort.write(byte(unbinary("0101010")));
  // R3
  myPort.write(byte(unbinary("1010101")));
  myPort.write(byte(unbinary("0101010")));
  myPort.write(byte(unbinary("1010101")));
  myPort.write(byte(unbinary("0101010")));
  myPort.write(byte(unbinary("1010101")));
  myPort.write(byte(unbinary("0101010")));
  myPort.write(byte(unbinary("1010101")));
  // R4
  myPort.write(byte(unbinary("0101010")));
  myPort.write(byte(unbinary("1010101")));
  myPort.write(byte(unbinary("0101010")));
  myPort.write(byte(unbinary("1010101")));
  myPort.write(byte(unbinary("0101010")));
  myPort.write(byte(unbinary("1010101")));
  myPort.write(byte(unbinary("0101010")));
  myPort.write(0x8F);


delay(500);
 
 

  myPort.write(0x80);
  myPort.write(0x83);
  myPort.write(0x00);
  // R1
  myPort.write(byte(unbinary("0000000")));
  myPort.write(byte(unbinary("0000000")));
  myPort.write(byte(unbinary("0000000")));
  myPort.write(byte(unbinary("0000000")));
  myPort.write(byte(unbinary("0000000")));
  myPort.write(byte(unbinary("0000000")));
  myPort.write(byte(unbinary("0000000")));
  // R2
  myPort.write(byte(unbinary("0000000")));
  myPort.write(byte(unbinary("0111111")));
  myPort.write(byte(unbinary("1111110")));
  myPort.write(0x05);
  myPort.write(byte(unbinary("0001110")));
  myPort.write(byte(unbinary("0111101")));
  myPort.write(byte(unbinary("0000000")));
  // R3
  myPort.write(byte(unbinary("0000000")));
  myPort.write(byte(unbinary("1101010")));
  myPort.write(byte(unbinary("1001111")));
  myPort.write(0x05);
  myPort.write(0x5E);
  myPort.write(0x4F);
  myPort.write(byte(unbinary("0000000")));
  // R4
  myPort.write(byte(unbinary("0000000")));
  myPort.write(byte(unbinary("0000000")));
  myPort.write(byte(unbinary("0000000")));
  myPort.write(byte(unbinary("0000000")));
  myPort.write(byte(unbinary("0000000")));
  myPort.write(byte(unbinary("0000000")));
  myPort.write(byte(unbinary("0000000")));
  myPort.write(0x8F);
 
  println("END");
delay(500);
}
