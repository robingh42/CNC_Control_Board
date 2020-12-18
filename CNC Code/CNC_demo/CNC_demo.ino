/* Written by Robin Graham-Hayes
 * 
 * A example of what the CNC board can do
 *  
 * I own no rights to the libraries
 *  
 *  
*/
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#define ENCODER_USE_INTERRUPTS
#include <Encoder.h>
#include <Arduino.h>
#include "BasicStepperDriver.h"
#include <Servo.h>


#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels
#define OLED_RESET 4
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);


Encoder myEnc(11, 12);
volatile long oldPosition  = -999;
volatile long newPosition = 0;
volatile int pos = 0;
int encoderSteps = 4;
int menu_len = 5;

const int button_pin = 10;
volatile int button_state = 0; //starting state of the button is 0
volatile bool in_menu = true;
unsigned long last_interrupt_time = 0; 

int solenoid_pin = 9;

const int LED_GREEN = 14;
const int LED_RED = 13;


int servo_pin = 8;
Servo myservo;

#define MOTOR_STEPS 400
#define Z_MOTOR_STEPS 200
#define RPM 120
// Since microstepping is set externally, make sure this matches the selected mode
// If it doesn't, the motor will move at a different RPM than chosen
// 1=full step, 2=half step etc.
#define MICROSTEPS 32
#define x_DIR 23
#define x_STEP 22
#define y_DIR 7
#define y_STEP 6
#define z_DIR 6
#define z_STEP 5

// 2-wire basic config, microstepping is hardwired on the driver
BasicStepperDriver stepperX(MOTOR_STEPS, x_DIR, x_STEP);
BasicStepperDriver stepperY(MOTOR_STEPS, y_DIR, y_STEP);
BasicStepperDriver stepperZ(Z_MOTOR_STEPS, z_DIR, z_STEP);



const unsigned char bitmap[] = {
  0x3f, 0xff, 0xff, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x7f, 0xff, 0xff, 0xf8, 0xe0, 0x00, 0x03, 0x80,
  0x7f, 0xff, 0xff, 0xf8, 0xe0, 0x00, 0x03, 0x80, 0x7f, 0xff, 0xff, 0xf0, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x00, 0x00, 0x00, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x00, 0x00, 0x00, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x00, 0x00, 0x00, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x00, 0x00, 0x00, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x00, 0x00, 0x00, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x0f, 0xfc, 0x00, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x1f, 0xfe, 0x00, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x1f, 0xff, 0x00, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x1f, 0xff, 0x00, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x1c, 0x0f, 0x00, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x1c, 0x0f, 0x00, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x1c, 0x0f, 0x00, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x1e, 0x0f, 0x00, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x1f, 0xff, 0x00, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x1f, 0xfe, 0x00, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x1f, 0xfc, 0x00, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x1c, 0x38, 0x00, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x1c, 0x3c, 0x00, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x1c, 0x1c, 0x00, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x1c, 0x1e, 0x00, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x1c, 0x1e, 0x00, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x1c, 0x0e, 0x00, 0xff, 0xff, 0xff, 0x80,
  0x70, 0x1c, 0x0e, 0x00, 0xff, 0xff, 0xff, 0x80, 0x70, 0x08, 0x06, 0x00, 0xff, 0xff, 0xff, 0x80,
  0x70, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0x80, 0x70, 0x00, 0x00, 0x00, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x00, 0x00, 0x00, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x00, 0x00, 0x00, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x00, 0x00, 0x00, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x00, 0xff, 0xf0, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x01, 0xff, 0xf8, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x00, 0xff, 0xf8, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x00, 0x7f, 0xf8, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x00, 0x00, 0x38, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x00, 0x00, 0x38, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x00, 0x00, 0x38, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x00, 0x00, 0x38, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x00, 0x00, 0x38, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x00, 0x00, 0x38, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x00, 0x00, 0x38, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x00, 0x00, 0x38, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x00, 0x00, 0x38, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x00, 0x00, 0x38, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x00, 0x00, 0x38, 0xe0, 0x00, 0x03, 0x80,
  0x70, 0x00, 0x00, 0x38, 0xe0, 0x00, 0x03, 0x80, 0x70, 0x00, 0x00, 0x38, 0xe0, 0x00, 0x03, 0x80,
  0x7f, 0xff, 0xff, 0xf8, 0xe0, 0x00, 0x03, 0x80, 0x7f, 0xff, 0xff, 0xf8, 0xe0, 0x00, 0x03, 0x80,
  0x7f, 0xff, 0xff, 0xf8, 0xe0, 0x00, 0x03, 0x80, 0x3f, 0xff, 0xff, 0xf0, 0x40, 0x00, 0x00, 0x00
};


void setup() {
  Serial.begin(9600);
  //Setup I2C pins for display
  Wire.setSDA(17);
  Wire.setSCL(16);

  //Setup the servo
  myservo.attach(servo_pin);

  pinMode(LED_GREEN, OUTPUT);
  pinMode(LED_RED, OUTPUT);
  digitalWrite(LED_RED, HIGH);
  
  //Setup the encoder button
  pinMode(button_pin, INPUT_PULLUP);
  
  //interrupt if the state of the button changes
  attachInterrupt(digitalPinToInterrupt(button_pin), buttonISR, CHANGE);
  
  //Setup the solenoid
  pinMode(solenoid_pin, OUTPUT);
  
  //Setup the steppers with the programed microsteps
  stepperX.begin(RPM, MICROSTEPS);
  stepperY.begin(RPM, MICROSTEPS);

  // If the display throws an error, do not continue
  // SSD1306_SWITCHCAPVCC = generate display voltage from 3.3V internally
  if (!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) { // Address 0x3D for 128x64
    Serial.println(F("SSD1306 allocation failed"));
    for (;;); // Don't proceed, loop forever
  }

  
  display.clearDisplay();
  int start_width = 58;
  int start_height = 54;
  display.drawBitmap(64 - start_width / 2, 32 - start_height / 2, bitmap, start_width, start_height, SSD1306_WHITE);
  display.display();
  delay(2000); // Pause for 2 seconds

  // Clear the buffer
  display.clearDisplay();
  display.setTextSize(1);      // Normal 1:1 pixel scale
  display.setTextColor(SSD1306_WHITE); // Draw white text
  display.setCursor(1, 0);     // Start at top-left corner
  display.cp437(true);         // Use full 256 char 'Code Page 437' font
  updateMenu(0);

}

void loop() {
  menu();
  
  //Serial.print("menu ");
  //Serial.println(in_menu);
  //  display.invertDisplay(true);
  //  delay(1000);
  //  display.invertDisplay(false);
  //  delay(1000);
}




/*#################################################################
  #                           View                                #
  #################################################################*/
void updateMenu(long pos) {
  
  Serial.println("update menu");
  display.clearDisplay();
  display.setTextSize(1);      // Normal 1:1 pixel scale
  display.setCursor(2, 2);
  display.println("Sweep Stepper");
  display.setCursor(2, 10);
  display.println("Stepper Speed Test");
  display.setCursor(2, 18);
  display.println("Multi Axis Stepper");
  display.setCursor(2, 26);
  display.println("Sweep Servo");
  display.setCursor(2, 34);
  display.println("Blink Solenoid");
  display.setCursor(2, 42);
  display.println("Stepper from Encoder");
  display.setCursor(0, 50);
  display.fillRect(-1, pos * 8 + 1, 128, 9, SSD1306_INVERSE);
  display.display();
}

void show_func(String func_name, String action = "Running",  String func_name2 = ""){
  display.clearDisplay();
  display.setTextSize(2); 
  display.setCursor(SCREEN_WIDTH/2 - 10*(action.length()/2+1), SCREEN_HEIGHT/4 - 10);
  display.println(action);
  if (func_name2 == ""){
    display.setCursor(SCREEN_WIDTH/2 - 10*(func_name.length()/2+1), SCREEN_HEIGHT*3/4 - 14/2);
    display.println(func_name);
    display.display();
  }
  else {
    display.setCursor(SCREEN_WIDTH/2 - 10*(func_name.length()/2+1), SCREEN_HEIGHT*5/8 - 10);
    display.println(func_name);
    display.setCursor(SCREEN_WIDTH/2 - 10*(func_name2.length()/2+1), SCREEN_HEIGHT*7/8 - 14/2);
    display.println(func_name2);
    display.display();
  }
  
}

/*#################################################################
  #                       Controller                              #
  #################################################################*/

void menu() {
  digitalWrite(LED_GREEN, LOW);
  newPosition = -myEnc.read();
  pos = newPosition / encoderSteps;
  //  Serial.print("[");
  //  Serial.print(myEnc.read());
  //  Serial.print(pos);
  //  Serial.println("]");

  if (pos > menu_len) {
    myEnc.write(0);
    newPosition = 0;
    Serial.println(pos);
    Serial.println("upper");

  }
  else if (pos <= -1) {
    myEnc.write(0);
    newPosition = 0;
    Serial.print(pos);
  }

  if (newPosition != oldPosition) {
    oldPosition = newPosition;
    pos = newPosition / encoderSteps;
    updateMenu(pos);
    Serial.println(pos);
    Serial.println("change");
  }
  
  menu_selection();
}


void buttonISR() {
          //Serial.println("ISR");
  if (millis() - last_interrupt_time < 50) { //if the last interrupt happened within the last 50 milliseconds, do not change the mode
    return;
  }
          //Serial.println("buttonISR");
  last_interrupt_time = millis(); //set the new last interrupt time to the current millis value
  if (button_state == 1) { //if the button state is high, add one to the mode
    button_state = 0; //set the button state back to zero
    in_menu = !in_menu;
           //Serial.println("button");
  } else {
    button_state = 1; //set the button state to one so that we only recognize every other change
  }
}


void menu_selection() {
  if (in_menu){
    return;
  }
  digitalWrite(LED_GREEN, HIGH);
  switch (pos) {
    case (0)://all lights off
      Serial.print("sweep");
      stepper_sweep();
      break;
    case (1)://all lights off
      Serial.print("speed");
      stepper_speed();
      break;
    case (2)://all lights off
      Serial.print("multi");
      stepper_multi();
      break;
     case(3):
      Serial.print("Servo");
      servo_test();
      break;
     case(4):
      Serial.print("solenoid");
      solenoid_blink();
      break;
     case(5):
      Serial.print("stepFromEncoder");
      stepFromEncode();
      break;
  }
  Serial.println("--------");
  Serial.println(pos);
  Serial.println("--------");
  updateMenu(pos);
  
  if (!in_menu){
    in_menu = !in_menu;
  }
}


/*#################################################################
  #                          Model                                #
  #################################################################*/


void stepper_sweep() {
  show_func("Stepper","Sweeping");
  Serial.println("forward");
  stepperX.rotate(360);
  delay(500);
  Serial.println("back");
  stepperX.move(-MOTOR_STEPS*MICROSTEPS);
  delay(1000);
  Serial.println("stop");
}

void stepper_speed() {
  show_func(String("RPM:"+String(RPM)),"Stepper");
  int timeS = 500;
  stepperX.move(MOTOR_STEPS*MICROSTEPS);
  delay(timeS);
  stepperX.setRPM(RPM * 2);
  show_func(String("RPM:"+String(RPM * 2)),"Stepper");
  stepperX.move(MOTOR_STEPS*MICROSTEPS);
  delay(timeS);
  stepperX.setRPM(RPM * .5);
  show_func(String("RPM:"+String(int(RPM * .5))),"Stepper");
  stepperX.move(MOTOR_STEPS*MICROSTEPS);
  delay(timeS);
}

void stepper_multi() {
  show_func("Steppers","Running","X&Y");
  stepperX.rotate(360);
  delay(500);
  stepperX.move(-MOTOR_STEPS*MICROSTEPS);
  delay(1000);
  stepperY.rotate(360);
  delay(500);
  stepperY.move(-MOTOR_STEPS*MICROSTEPS);
  delay(1000);
}

void solenoid_blink() {
  show_func("Solenoid");
  for(int i = 0; i < 5; i++){
    digitalWrite(solenoid_pin, HIGH);
    delay(100);
    digitalWrite(solenoid_pin, LOW);
    delay(100);
  }
  
}

void servo_test(){
  show_func("Servo","Sweeping");
  for(int ang = 0; ang <= 180; ang += 1) // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    if (in_menu) {return;}
    myservo.write(ang);              // tell servo to go to position in variable 'pos' 
    //delay(15);                       // waits 15ms for the servo to reach the position 
  } 
  for(int ang = 180; ang>=0; ang-=1)     // goes from 180 degrees to 0 degrees 
  {                                
    if (in_menu) {return;}
    myservo.write(ang);              // tell servo to go to position in variable 'pos' 
    //delay(15);                       // waits 15ms for the servo to reach the position 
  } 

  for(int ang = 0; ang <= 180; ang += 15) // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    if (in_menu) {return;}
    myservo.write(ang);              // tell servo to go to position in variable 'pos' 
    delay(500);                       // waits 15ms for the servo to reach the position 
  } 
  for(int ang = 180; ang>=0; ang-= 15)     // goes from 180 degrees to 0 degrees 
  { 
    if (in_menu) {return;}                        
    myservo.write(ang);              // tell servo to go to position in variable 'pos' 
    delay(500);                       // waits 15ms for the servo to reach the position 
  } 
  
}
void stepFromEncode(){
  int tot = 0;
  //myEnc.write(0);
  while (!in_menu){
    int rot = encoderMotor();
    tot += rot*15;
    tot = tot % 360;
    stepperX.rotate(15*rot);
    display.clearDisplay();
    display.setTextSize(1); 
    display.setCursor(SCREEN_WIDTH/2 - 5*9,2);
    display.println("Stepper Position:");
    display.setTextSize(3);      // Normal 1:1 pixel scale
    if (abs(tot) > 99){
      display.setCursor(SCREEN_WIDTH/2 - 30, SCREEN_HEIGHT/2 - 21/2);
    }
    else {
      display.setCursor(SCREEN_WIDTH/2 - 15, SCREEN_HEIGHT/2 - 21/2);
    }
    display.println(tot);
    display.display();
  }
}


int encoderMotor(){
  newPosition = -myEnc.read();
  //Serial.print("New pos: ");
  //Serial.println(newPosition);
  pos = newPosition / encoderSteps;

  if (newPosition != oldPosition) {
    
    int oldPos = oldPosition / encoderSteps;
    int change = pos - oldPos;
    oldPosition = newPosition;
    pos = newPosition / encoderSteps;
    Serial.println(pos);
    Serial.println(newPosition);
    Serial.println(oldPos);
    Serial.print(change);
    Serial.println(" change");
    return change;
  }
    return 0;


}
