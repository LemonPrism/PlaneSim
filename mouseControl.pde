void mouseControl() {
  float centerX = width / 2;
  float centerY = height / 2;
  float planeZ = 800;
  float sensitivity = 0.000005;

  yaw += (mouseX - centerX) * sensitivity;
  pitch += (mouseY - centerY) * sensitivity;
  roll = -(mouseX - centerX) * 0.001;
  pitch = constrain(pitch, -PI / 2, PI / 2);


  float dx = cos(pitch) * sin(yaw);
  float dz = -cos(pitch) * cos(yaw);
  scrollX += dx*speed;
  scrollZ += dz*speed;

  PMatrix3D orientation = new PMatrix3D();
  orientation.rotateZ(roll);
  orientation.rotateX(pitch);
  orientation.rotateY(yaw);

  PVector camOffset = new PVector(0, -50, 300); 
  orientation.mult(camOffset, camOffset);

  PVector lookOffset = new PVector(0, 0, -100);
  orientation.mult(lookOffset, lookOffset);

  float camX = centerX - camOffset.x;
  float camY = centerY - camOffset.y;
  float camZ = planeZ - camOffset.z;

  float lookX = centerX + lookOffset.x;
  float lookY = centerY + lookOffset.y;
  float lookZ = planeZ + lookOffset.z;

  camera(camX, camY, camZ, lookX, lookY, lookZ, 0, -1, 0);
}
