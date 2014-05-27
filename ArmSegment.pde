class ArmSegment extends EndSegment {
  float r = arm_length;
  float theta;
  float x = 0;
  float y = 0;
  EndSegment end_arm;
  ArmSegment(float theta) {
    this.theta = theta;
  }
  
  float end_x() {
    return r * cos(theta);
  }
  
  float end_y() {
    return r * sin(theta);
  }
  
  void r(float t) {
    theta = radians(t);
  }
  
  void set_origin(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  void _d(color l, color e) {
    int ellipse_r = 10;
    pushMatrix();
    translate(x, y);
    rotate(-theta);
    
    //line
    strokeWeight(3);
    stroke(l);
    noFill();
    line(0,0,r,0);
    //dots
    noStroke();
    fill(e);
    ellipse(0, 0, ellipse_r, ellipse_r);
    ellipse(r, 0, ellipse_r, ellipse_r);
    
    
    if (end_arm != null) {
      pushMatrix();
      translate(r, 0);
      end_arm._d(l, e);
      popMatrix();
    }    
    popMatrix();
  }
  
  void d() {
    color l = color(0,0,0);
    color e = color(255, 0, 0);
    _d(l, e);
  }
  
  void c() {
    color l = color(255,255,255);
    color e = color(255,255,255);
    _d(l, e);
  }
  
  void set_end_seg(EndSegment e) {
    this.end_arm = e;
  }
}
