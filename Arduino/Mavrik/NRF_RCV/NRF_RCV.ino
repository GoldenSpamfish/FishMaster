// SimpleRxAckPayload- the slave or the receiver

#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>

#include <cppQueue.h>
using namespace std;

#define CE_PIN   9
#define CSN_PIN 10

const byte thisSlaveAddress[5] = {'R','x','A','A','A'};

RF24 radio(CE_PIN, CSN_PIN);

char sentbyte='\0';
char dataReceived; // this must match dataToSend in the TX

#define	MAX_LENGTH	1024
cppQueue	packets(sizeof(char), MAX_LENGTH, FIFO, true);

unsigned int i=0;

const int packetsize=32;
char ackData[packetsize]={'\0'}; // the values
bool newData = false;

//==============

void setup() {

    Serial.begin(115200);

    Serial.println("SimpleRxAckPayload Starting");
    radio.begin();
    radio.setDataRate( RF24_250KBPS );
    radio.openReadingPipe(1, thisSlaveAddress);

    radio.enableAckPayload();
    
    radio.startListening();

    radio.writeAckPayload(1, &ackData, sizeof(ackData)); // pre-load data
}

//==========

void loop() {
  if (Serial.available() > 0) {
    // read the incoming byte:
    sentbyte=Serial.read();
    packets.push(&sentbyte);
    
  }
  
    getData();
    showData();
}

//============

void getData() {
    if ( radio.available() ) {
        radio.read( &dataReceived, sizeof(dataReceived) );
        i=0;
        while (i<packetsize && !packets.isEmpty()){
        packets.pop(&ackData[i]);
        i++;
        }
  
        radio.writeAckPayload(1, &ackData, sizeof(ackData));
        newData = true;
        
        i=0;
        while (i<packetsize){
        ackData[i]='\0';
        i++;
        }
    }
}


//================

void showData() {
    if (newData == true) {
        Serial.print(dataReceived);
        newData = false;
    }
}
