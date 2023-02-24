// defines pins numbers

const int trigPin = 9;
const int echoPin = 10;
const int D5Pin = 5;
// defines variables
long duration;
int distance;
void setup() {
  pinMode(trigPin, OUTPUT); // Sets the trigPin as an Output
  pinMode(echoPin, INPUT);
  pinMode(D5Pin, OUTPUT); // Sets the echoPin as an Input
  Serial.begin(9600); // Starts the serial communication
  
}
void loop() {
  // Clears the trigPin
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  // Sets the trigPin on HIGH state for 10 micro seconds
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  // Reads the echoPin, returns the sound wave travel time in microseconds
  duration = pulseIn(echoPin, HIGH);
  // Calculating the distance
  distance = duration * 0.034 / 2;
  // Prints the distance on the Serial Monitor
   if(distance < 8){
    Serial.print("Distance: ");
    Serial.println(distance);
    digitalWrite(D5Pin, LOW);
  

  }
  else{
    digitalWrite(D5Pin, HIGH);
  }
  
  
  delay(2000);
}