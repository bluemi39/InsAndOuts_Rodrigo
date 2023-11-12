
byte Value;
const int Light = 4;

void setup() {
  pinMode(Light, OUTPUT);
  Serial.begin(9600);
}

void loop() {

  if (Serial.available()) {
    Value = Serial.read();
  }

  if (Value == 0) {
    digitalWrite(Light, LOW);
  }

  if (Value == 1) {
    digitalWrite(Light, HIGH);
  }
}
