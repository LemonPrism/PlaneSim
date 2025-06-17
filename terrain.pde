void terrain() {
  float noiseStartX = scrollX * 0.0025;
  float noiseStartZ = scrollZ * 0.0025;

  for (int y = 0; y < rows; y++) {
    float zOff = noiseStartZ + y * 0.1;
    for (int x = 0; x < cols; x++) {
      float xOff = noiseStartX + x * 0.1;
      terrain[x][y] = map(noise(xOff, zOff), 0, 1, -200, 400);
    }
  }

  noStroke();
  pushMatrix();

lights();
  translate(0, 300, 0); 
  rotateX(HALF_PI);      
  translate(-w / 2, -h / 2);

  for (int y = 0; y < rows - 1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
      fill(Ggreen);
      vertex(x * scl, y * scl, terrain[x][y]);
      vertex(x * scl, (y + 1) * scl, terrain[x][y + 1]);
    }
    endShape();
  }

  popMatrix();
}
