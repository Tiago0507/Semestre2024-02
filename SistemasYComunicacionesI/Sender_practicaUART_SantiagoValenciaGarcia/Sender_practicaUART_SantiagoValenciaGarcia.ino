// Juan Manuel Díaz Moreno A00394477
// Santiago Valencia García A00395902

#include <HardwareSerial.h>

HardwareSerial SerialPort(2);

int LED = 2;
int analogValue = 0;

void setup() {
  Serial.begin(115200);
  SerialPort.begin(115200, SERIAL_8N1, 16, 17);
  pinMode(LED, OUTPUT);
}

void loop() {
  if (SerialPort.available()) {
    analogValue = SerialPort.read();
    analogWrite(LED, analogValue);
    float voltaje = (analogValue*3.3)/255;

    // Serial.print("Valor análogo recibido: ");
    Serial.println(voltaje);
  }
}