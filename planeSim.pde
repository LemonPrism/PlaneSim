
import java.awt.Robot; 
Robot robot;

color skyblue = #87CEEB;
color black = #000000;
color white = #FFFFFF;
color Ggreen = #4F7942;
color Mgreen = #355E3B;

//key codes
boolean wkey, skey, akey, dkey, spacekey;
float bank, turn;



//terrain generation variables
int cols, rows;
int scl = 20;
int w = 2000;
int h = 1600;
float flying=0;

float [][] terrain;

//loading the plane
PShape plane;


//Plane coordinates
float planeX=CENTER;
float planeY= 1000;
float planeZ=0;
float pitch = 0 ;
float yaw= 0 ; 
float speed=5;
float roll = 0;
float scrollX = 0;  
float scrollZ = 0;



void setup() {
  //size ( 800,800, P3D);

  fullScreen(P3D);
  cols = w/ scl;
  rows = h/scl;
  terrain = new float [cols] [rows];
  plane = loadShape("plane.obj");
 
  noCursor();
}



void draw() {

  background (skyblue);
  terrain();
  act();
  drawPlane();
  mouseControl();


}

void act() {
}
