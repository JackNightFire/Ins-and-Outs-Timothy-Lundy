int sensorPin = A0;
int sensorValue = 0;

void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
pinMode(6,OUTPUT);
pinMode(7,OUTPUT);
pinMode(8,OUTPUT);
pinMode(9,OUTPUT);
pinMode(10,OUTPUT);
pinMode(11, OUTPUT);
pinMode(12,OUTPUT);
pinMode(13,OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:
sensorValue = analogRead(sensorPin);
Serial.println(sensorValue);
if(sensorValue>700){
 digitalWrite(7,HIGH);
  digitalWrite(8,HIGH);
  digitalWrite (9,HIGH);
  digitalWrite  (10,HIGH);
  tone(11,10000); //(pin,frequency)
delay(9);
}
else if (sensorValue>500){
  digitalWrite(7,HIGH);
  digitalWrite(8,HIGH);
  digitalWrite(9,HIGH);
  digitalWrite(10,LOW);
  tone(11,2500); //(pin,frequency)
delay(9);
}
else if (sensorValue>250){
digitalWrite(7,HIGH);
digitalWrite(8,LOW);
digitalWrite(9,LOW);
digitalWrite(10,LOW);
tone(11,2000); //(pin,frequency)
delay(9);
}
else {
  digitalWrite(7,LOW);
 digitalWrite(8,LOW);
 digitalWrite(9,LOW);
 digitalWrite(10,LOW);
 tone(11,0); //(pin,frequency)
delay(9);
 }
}
