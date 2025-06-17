void mouseControl() {
  float centerX = width / 2;
  float centerY = height / 2;
  float sensitivity = 0.000007;

  yaw -= (mouseX - centerX) * sensitivity;
  pitch += (mouseY - centerY) * sensitivity;
  roll = -(mouseX - centerX) * 0.001;
  pitch = constrain(pitch, -PI / 2, PI / 2);

  float dx = cos(pitch) * sin(yaw);
  float dz = -cos(pitch) * cos(yaw);
  scrollX += dx * speed;
  scrollZ += dz * speed;


  PMatrix3D orientation = new PMatrix3D();
  orientation.rotateZ(roll);
  orientation.rotateX(pitch);
  orientation.rotateY(yaw);


  PVector offset = new PVector(0, 50, 300);
  orientation.mult(offset, offset);

  float camX = width / 2 - offset.x;
  float camY = height / 2 - offset.y;
  float camZ = 0 - offset.z;


  PVector look = new PVector(0, 0, -100);
  orientation.mult(look, look);
  float lookX = width / 2 + look.x;
  float lookY = height / 2 + look.y;
  float lookZ = 0 + look.z;

  camera(camX, camY, camZ, lookX, lookY, lookZ, 0, -1, 0);
}
