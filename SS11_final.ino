int sensorPin = A0;
int sensorValue = 0;
int analogPin = 3;
const int sensorPin2 = A1;
int val = 0;

void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
 pinMode(2,OUTPUT);
 pinMode(3,OUTPUT);
 pinMode(4,OUTPUT);
 pinMode(5,OUTPUT);
 pinMode(6,OUTPUT);//y
 pinMode(7,OUTPUT);//y
 pinMode(8,OUTPUT);//y
 pinMode(9,OUTPUT);//b
 pinMode(10,OUTPUT);//b
 pinMode(11,OUTPUT);//b
 pinMode(12,OUTPUT);//b
 pinMode(13,OUTPUT);
}


void loop() {
  // put your main code here, to run repeatedly:
  sensorValue = analogRead(sensorPin);
Serial.println(sensorValue);


 if(sensorValue > 800){
  digitalWrite(2,HIGH);//r
  digitalWrite(3,HIGH);//r
  digitalWrite(4,HIGH);//r
  digitalWrite(5,HIGH);//r
  digitalWrite(6,LOW);//y
  digitalWrite(7,LOW);//y
  digitalWrite(8,LOW);//y
  digitalWrite(9,LOW);//y
  digitalWrite(10,LOW);//b
  digitalWrite(11,LOW);//b
  digitalWrite(12,LOW);//b
 // digitalWrite(13,LOW);//b
 tone(13,80);
 
}
else if(sensorValue > 760){
  digitalWrite(2,HIGH);//r
  digitalWrite(3,HIGH);//r
  digitalWrite(4,HIGH);//r
  digitalWrite(5,HIGH);//r
  digitalWrite(6,HIGH);//y
  digitalWrite(7,HIGH);//y
  digitalWrite(8,HIGH);//y
  digitalWrite(9,HIGH);//y
  digitalWrite(10,LOW);//b
  digitalWrite(11,LOW);//b
  digitalWrite(12,LOW);//b
  //digitalWrite(13,LOW);//b
  tone(13,70);
 
}

else if(sensorValue > 730){
  digitalWrite(2,LOW);//r
  digitalWrite(3,LOW);//r
  digitalWrite(4,LOW);//r
  digitalWrite(5,LOW);//r
  digitalWrite(6,HIGH);//y
  digitalWrite(7,HIGH);//y
  digitalWrite(8,HIGH);//y
  digitalWrite(9,HIGH);//y
  digitalWrite(10,HIGH);//b
  digitalWrite(11,HIGH);//b
  digitalWrite(12,HIGH);//b
  //digitalWrite(13,HIGH);//b
  tone(13,60);
 
}

else if(sensorValue > 690){
digitalWrite(2,LOW);//r
  digitalWrite(3,LOW);//r
  digitalWrite(4,LOW);//r
  digitalWrite(5,LOW);//r
  digitalWrite(6,LOW);//y
  digitalWrite(7,LOW);//y
  digitalWrite(8,LOW);//y
  digitalWrite(9,LOW);//y
  digitalWrite(10,HIGH);//b
  digitalWrite(11,HIGH);//b
  digitalWrite(12,HIGH);//b
 // digitalWrite(13,HIGH);//b
 tone(13,50);  

}
 
 else if(sensorValue > 642){
  digitalWrite(2,LOW);//r
  digitalWrite(3,LOW);//r
  digitalWrite(4,LOW);//r
  digitalWrite(5,LOW);//r
  digitalWrite(6,HIGH);//y
  digitalWrite(7,HIGH);//y
  digitalWrite(8,HIGH);//y
  digitalWrite(9,HIGH);//y
  digitalWrite(10,HIGH);//b
  digitalWrite(11,HIGH);//b
  digitalWrite(12,HIGH);//b
  //digitalWrite(13,HIGH);//b
  tone(13,40);
 
}
else if (sensorValue > 516){
 
  digitalWrite(2,HIGH);
  digitalWrite(3,HIGH);
  digitalWrite(4,HIGH);
  digitalWrite(5,HIGH);
  digitalWrite(6,HIGH);//y
  digitalWrite(7,HIGH);//y
  digitalWrite(8,HIGH);//y
  digitalWrite(9,HIGH);//b
  digitalWrite(10,HIGH);//b
  digitalWrite(11,HIGH);//b
  digitalWrite(12,HIGH);//b
 // digitalWrite(13,HIGH);
 tone(13,30);

}
else if (sensorValue > 450){
  //digitalWrite(1,LOW);
   digitalWrite(2,HIGH);//r
  digitalWrite(3,HIGH);//r
  digitalWrite(4,HIGH);//r
  digitalWrite(5,HIGH);//r
  digitalWrite(6,HIGH);//g
  digitalWrite(7,HIGH);//g
  digitalWrite(8,HIGH);//g
  digitalWrite(9,HIGH);//g
  digitalWrite(10,LOW);//b
  digitalWrite(11,LOW);
  digitalWrite(12,LOW);
 // digitalWrite(13,LOW);
 tone(13,20);
 
 }
 else if(sensorValue > 320){
   digitalWrite(2,HIGH);
  digitalWrite(3,HIGH);
  digitalWrite(4,HIGH);
  digitalWrite(5,HIGH);
  digitalWrite(6,LOW);
  digitalWrite(7,LOW);
  digitalWrite(8,LOW);
  digitalWrite(9,LOW);
  digitalWrite(10,LOW);
  digitalWrite(11,LOW);
  digitalWrite(12,LOW);
  //digitalWrite(13,LOW);
  tone(13,10);
  
 }
 else if( sensorValue < 320){
  digitalWrite(2,LOW);
  digitalWrite(3,LOW);
  digitalWrite(4,LOW);
  digitalWrite(5,LOW);
  digitalWrite(6,LOW);
  digitalWrite(7,LOW);
  digitalWrite(8,LOW);
  digitalWrite(9,LOW);
 // digitalWrite(10,LOW);
  digitalWrite(11,LOW);
  digitalWrite(12,LOW);
 // digitalWrite(13,LOW);
 tone(13,0);
 val = analogRead(A1);
 analogWrite(2, val/4);

 }
}
