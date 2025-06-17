void drawPlane() {
  pushMatrix();
  translate(width / 2, height / 2, 0);  
  rotateZ(roll);
  rotateX(pitch);
  rotateY(yaw);
  scale(20);
  shape(plane);  
  popMatrix();
}
