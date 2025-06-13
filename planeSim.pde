
color skyblue = #87CEEB;
color black = #000000;
color white = #FFFFFF;
color Ggreen = #4F7942;
color Mgreen = #355E3B;

//key codes 
boolean wkey, skey,akey, dkey , spacekey; 
float speed;
float bank, turn;
float pitch = 0 ; 


//terrain generation variables
int cols, rows;
int scl = 20;
int w = 2000;
int h = 1600;
float flying=0;

float [][] terrain;

//loading the plane 
PShape plane; 




void setup() {
  //size ( 800,800, P3D);
  
fullScreen(P3D); 
  cols = w/ scl;
  rows = h/scl;
  terrain = new float [cols] [rows];
  plane = loadShape("plane.obj");
}



void draw() {
  
  background (skyblue);
terrain();
act();
plane(); 
  
   
}

void act() {

}

  
  
