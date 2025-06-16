void mouseControl(){
   
  float centerX = width / 2;
  float centerY = height / 2;

  float sensitivity = 0.00002;
  yaw += (mouseX - centerX) * sensitivity;
  pitch += (mouseY - centerY) * sensitivity;
  pitch = constrain(pitch, -PI/2, PI/2); 

 
  float dx = cos(pitch) * sin(yaw);
  float dy = -sin(pitch);
  float dz = -cos(pitch) * cos(yaw);

  planeX += dx * speed;
  planeY += dy * speed;
  planeZ += dz * speed;


  float camDist = 500;
  float camHeight = 200;
  float camX = planeX - dx * camDist;
  float camY = planeY - dy * camDist + camHeight;
  float camZ = planeZ - dz * camDist;

  camera(camX, camY, camZ, planeX, planeY, planeZ, 0, -1, 0);

  
  
  
  
  
  
  
  
  
  
}
