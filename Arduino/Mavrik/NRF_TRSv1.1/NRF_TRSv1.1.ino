// SimpleTxAckPayload - the master or the transmitter

#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>


#define CE_PIN 9
#define CSN_PIN 10

const byte slaveAddress[5] = { 'R', 'x', 'A', 'A', 'A' };

RF24 radio(CE_PIN, CSN_PIN);  // Create a Radio

char dataToSend = 0;
char txNum = '0';

const int packetsize=32;
char ackData[packetsize]={'\0'};
bool newData = false;
unsigned int i=0;

unsigned long currentMillis;
unsigned long prevMillis;
unsigned long txIntervalMillis = 1000;  // send once per second

//===============

void setup() {

  Serial.begin(115200);
  Serial.println("SimpleTxAckPayload Starting");

  radio.begin();
  radio.setDataRate(RF24_250KBPS);

  radio.enableAckPayload();

  radio.setRetries(5, 5);  // delay, count
                           // 5 gives a 1500 µsec delay which is needed for a packetsize byte ackPayload
  radio.openWritingPipe(slaveAddress);
}

//=============

void loop() {
  if (Serial.available() > 0) {
    // read the incoming byte:
    dataToSend = Serial.read();
    send();
    showData();
  }
  //delayMicroseconds(10000);

  
}

//================

void send() {

  //bool rslt;
  radio.write(&dataToSend, sizeof(dataToSend));

  //if (rslt) {
    if (radio.isAckPayloadAvailable()) {
      radio.read(&ackData, sizeof(ackData));
      newData = true;
  //   } else {
  //     //Serial.println("  Acknowledge but no data ");
  //   }
  //   //updateMessage();
  // } else {
  //   //Serial.println("  Tx failed");
  // }
    }
  prevMillis = millis();
}


//=================

void showData() {
  if (newData == true) {
      i=0;
      while (i<sizeof(ackData)){
        if (ackData[i]!='\0') {   
        Serial.print(ackData[i]);
        }
        i++;
      }
    newData = false;
  }
}
