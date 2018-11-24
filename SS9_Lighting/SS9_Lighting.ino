const int BUTTON = 3;
int val = 0;

void setup() {
  // put your setup code here, to run once:
pinMode(2,OUTPUT);
pinMode(6,OUTPUT);
pinMode(7,OUTPUT);
pinMode(8,OUTPUT);
pinMode(9,OUTPUT);
pinMode(10,OUTPUT);
pinMode(11,OUTPUT);
pinMode(BUTTON, INPUT);
Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
digitalWrite(6,HIGH);
delay(10);
digitalWrite(7,LOW);
delay(20);
digitalWrite(8,LOW);
delay(30);
digitalWrite(9,LOW);
delay(40);
digitalWrite(10,LOW);
delay(50);
digitalWrite(11,LOW);
delay(60);
tone(2,10000);
delay(200);

noTone(2);
delay(20);

digitalWrite(6,HIGH);
delay(10);
digitalWrite(7,HIGH);
delay(20);
digitalWrite(8,LOW);
delay(30);
digitalWrite(9,LOW);
delay(40);
digitalWrite(10,LOW);
delay(50);
digitalWrite(11,LOW);
delay(60);

digitalWrite(6,HIGH);
delay(10);
digitalWrite(7,HIGH);
delay(20);
digitalWrite(8,HIGH);
delay(30);
digitalWrite(9,LOW);
delay(40);
digitalWrite(10,LOW);
delay(50);
digitalWrite(11,LOW);
delay(60);

digitalWrite(6,HIGH);
delay(10);
digitalWrite(7,HIGH);
delay(20);
digitalWrite(8,HIGH);
delay(30);
digitalWrite(9,HIGH);
delay(40);
digitalWrite(10,LOW);
delay(50);
digitalWrite(11,LOW);
delay(60);

digitalWrite(6,HIGH);
delay(10);
digitalWrite(7,HIGH);
delay(20);
digitalWrite(8,HIGH);
delay(30);
digitalWrite(9,HIGH);
delay(40);
digitalWrite(10,HIGH);
delay(50);
digitalWrite(11,LOW);
delay(60);

digitalWrite(6,HIGH);
delay(10);
digitalWrite(7,HIGH);
delay(20);
digitalWrite(8,HIGH);
delay(30);
digitalWrite(9,HIGH);
delay(40);
digitalWrite(10,HIGH);
delay(50);
digitalWrite(11,HIGH);
delay(60);

val = digitalRead(BUTTON);
if (val==HIGH){
  digitalWrite(6,LOW);
delay(10);
digitalWrite(7,LOW);
delay(20);
digitalWrite(8,LOW);
delay(30);
digitalWrite(9,LOW);
delay(40);
digitalWrite(10,LOW);
delay(50);
digitalWrite(11,LOW);
tone(2,10000);
delay(20000); 
  
 }
}
