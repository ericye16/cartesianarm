float theta1(float x, float y) {
  float adj_theta = theta2(x, y) / 2;
  float t = degrees(atan2(y, x));
  print(adj_theta + "\n");
  if (adj_theta > 0)
    return t - adj_theta;
  else
    return (t - adj_theta);
}

float theta2(float x, float y) {
  float mul = 1;
  float r = dist(0, 0, x ,y);
  float t = acos(1 - sq(r) / (2 * sq(arm_length)));
  return mul * (180 - degrees(t));
}
