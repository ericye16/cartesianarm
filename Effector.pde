class Effector extends EndSegment {
  float dot_size = 12;
  void d() {
    _d(0,0);
  }
  void _d(color l, color e) {
    noStroke();
    fill(0, 255, 0);
    ellipse(0, 0, dot_size, dot_size);
  }
}
