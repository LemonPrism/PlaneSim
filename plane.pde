void drawPlane() {
  pushMatrix();
  translate(planeX,planeY, planeZ); 
  //rotateX(PI); 
   rotateY(yaw);
  rotateX(pitch);
  scale(50);
  shape(plane);
  popMatrix();
}
