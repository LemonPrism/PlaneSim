float speed = 0; 
float pitch =0 ; 
float roll = 0 ; 
float throttleY=1040 ; 
 
boolean  wkey, skey; 


void setup() {
  fullScreen();
}

void draw() {
  background(#87CEEB);

  speed = map(throttleY, 0, height, 300, 0);


  fill(#000000); 
  noStroke();
  rect(0, 800, width, height);

  float pitch = map(mouseY, 0, height, 50, -50); 
  float roll = map(mouseX, 0, width, PI / 4, -PI / 4); 
  stroke(#000000);
  strokeWeight(4); 
  fill(#87CEEB);
  circle(200, 920, 190);

  attIn(200, 920, pitch, roll);
  speedMeter(500, 920);  

  
  throttle(650, 840);
  
}


void attIn(int x, int y, float pitch, float roll) {
  pushMatrix();
  translate(x, y);


  //fill(#87CEEB);
  //stroke(#000000);
  //strokeWeight(4);
  //circle(0, 0, 200);
pushMatrix();
    if ( mouseY < 800){
  
  rotate(-roll);
  translate(0, pitch); 

    }

  noStroke(); 
  fill(#8B4513);
  arc(0, 0, 180, 180, 0, PI, CHORD); 


  stroke(#000000);
  strokeWeight(3);
  line(-90, 0, 90, 0);

  popMatrix();


  stroke(#000000);
  strokeWeight(2);
  line(-20, 0, 20, 0); 
  popMatrix();
}


void speedMeter(float x, float y) {
  pushMatrix();
  translate(x, y);

  for (int i = -5; i <= 5; i++) {
    float s = int(speed /15) * 10 + i * 10;
    float offset = (s - speed) * 2; 
    
 
    fill(255);
    textAlign(RIGHT, CENTER);
    textSize(16);
    text(int(s), -50, -offset);
    
    
    stroke(255);
    line(0, -offset, 20, -offset); 
  }


  fill(0);
  noStroke();
  rect(-30, -20, 60, 40); 
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(18);
  text(int(speed), 0, 0);


  noFill();
  stroke(#FFFFFF);
  strokeWeight(2);
  rect(-30, -20, 60, 40);

  popMatrix();
}



 void throttle(int x, int y) {




  stroke(255);
  strokeWeight(2);
  line(x, y, x, y + 200); 

 

  
  stroke(#FFFFFF);
  strokeWeight(3);
  fill(#000000);
  rect(x -15, throttleY, 30, 10);
}
void mouseDragged(){
 controlslider();  
}
void mouseReleased(){
 controlslider();  
}
  
  
  void controlslider(){ 
    
    if ( mouseX> 635 && mouseX < 665 && mouseY > 840 && mouseY< 1040){
      throttleY = mouseY; 
      
      
    }
    
    
    
    
    
    
    
    
  }



void keyPressed() {
  if ( key=='W'|| key == 'w') wkey = true;

  if ( key=='S'|| key == 's') skey = true;

}



void keyReleased() {
  if ( key=='W'|| key == 'w') wkey = false;

  if ( key=='S'|| key == 's') skey = false;

}
