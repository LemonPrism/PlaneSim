void keyPressed() {
  if ( key=='W'|| key == 'w') wkey = true;
  if ( key=='A'|| key == 'a') akey = true;
  if ( key=='S'|| key == 's') skey = true;
  if ( key=='D'|| key == 'd') dkey = true;
  if (key==' ') spacekey=true;
}



void keyReleased() {
  if ( key=='W'|| key == 'w') wkey = false;
  if ( key=='A'|| key == 'a') akey = false;
  if ( key=='S'|| key == 's') skey = false;
  if ( key=='D'|| key == 'd') dkey = false;
  if (key==' ') spacekey=false;
}
