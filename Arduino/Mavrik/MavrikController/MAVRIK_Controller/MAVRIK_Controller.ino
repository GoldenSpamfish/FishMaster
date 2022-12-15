/* Basic USB Joystick Example
   Teensy becomes a USB joystick

   You must select Joystick from the "Tools > USB Type" menu

   Pushbuttons should be connected to digital pins 0 and 1.
   Wire each button between the digital pin and ground.
   Potentiometers should be connected to analog inputs 0 to 1.

   This example code is in the public domain.
*/

void setup() {
  pinMode(1, INPUT_PULLUP);
  pinMode(2, INPUT_PULLUP);
}

void loop() {
  // read analog inputs and set X-Y position
  Joystick.X(analogRead(1));
  Joystick.Y(analogRead(0));
  Joystick.Z(analogRead(2));
  Joystick.Zrotate(analogRead(3));

  // read the digital inputs and set the buttons
  Joystick.button(1, 1-digitalRead(1));
  Joystick.button(2, 1-digitalRead(2));

  // a brief delay, so this runs 20 times per second
  delay(50);
}