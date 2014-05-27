float theta = 0;
float arm_length = 100;
float x = -100;
float y = -100;
float inc = 1;

ArmSegment a1 = new ArmSegment(0);  
ArmSegment a2 = new ArmSegment(0);
Effector e = new Effector();

void setup() {
  size(640,640);
  background(255);
  
  a1.set_end_seg(a2);
  a1.set_origin(320, 320);
  a2.set_end_seg(e);
}

void draw() {
  //a1.c();
  background(255);
  
  //rect
  stroke(0);
  noFill();
  rect(220, 220, 200, 200);
  a1.r(theta1(x, y));
  a2.r(theta2(x, y));
  //a1.r(theta);
  //a2.r(theta);
  a1.d();
  //theta++;
  if (x == 100) {
    y += 10;
    inc = -1;
  } else if (x == -100 && y != -100) {
    y += 10;
    inc = 1;
  }
  if (y == 100 && x == 100) {
    y = -100;
    x = -100;
  }
  x+= inc;
  //delay(1);
}
