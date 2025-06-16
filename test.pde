   PShape planeModel;

float planeX = 0;
float planeY = 0;
float planeZ = 0;

float pitch = 0; 
float yaw = 0;  
float roll = 0;  

float speed = 5;

void setup() {
  fullScreen(P3D);
  planeModel = loadShape("plane.obj");
  noCursor(); 
}

void draw() {
  background(#87CEEB);
  lights();

  float centerX = width / 2;
  float centerY = height / 2;

  float sensitivity = 0.000007;


  yaw += (mouseX - centerX) * sensitivity;  
  pitch -= (mouseY - centerY) * sensitivity; 
  roll = (mouseX - centerX)  * 0.001; 
  pitch = constrain(pitch, -PI/2, PI/2); 


  float dx = cos(pitch) * sin(yaw);
  float dy = -sin(pitch);
  float dz = -cos(pitch) * cos(yaw);

  planeX += dx * speed;
  planeY += dy * speed;
  planeZ += dz * speed;


  float camDist = 800;
  float camHeight = 200;
  float camX = planeX - dx * camDist;
  float camY = planeY - dy * camDist + camHeight;
  float camZ = planeZ - dz * camDist;

  camera(camX, camY, camZ, planeX, planeY, planeZ, 0, -1, 0);
 


 
  drawPlane();
}

void drawPlane() {
  pushMatrix();
  translate(planeX, planeY, planeZ);
  rotateY(yaw);  
  rotateX(pitch); 
  rotateZ(roll);  
  rotateY(PI);
  scale(50);
  shape(planeModel);
  popMatrix();
}
