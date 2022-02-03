float x, y, z, rotX, rotY, rotZ;
int mouseClicks = 0;
void setup() {
  size(750, 750, P3D);
  x = width/2;
  y = width/2+500;
  z = -2500;
  rotX = PI/3;
  rotY = 0;
  rotZ = PI/4;
}

void draw() {
  background(255);
  pushMatrix();
  translate(x, y, z);
  rotateX(rotX);
  rotateY(rotY);
  rotateZ(rotZ);
  stroke(0);
  noFill();
  recurse(-50, -50, 400, 1000);
  popMatrix();
  rotZ+=0.04;

  System.out.println(mouseClicks);
}

void recurse(int x, int y, int z, int length) {
  
 if (length<=100) {
    Sierpinskify(x, y, z, length);
  }
  else{
  recurse(x, y, z, length/2);
    recurse(x+length/2, y, z, length/2);
    recurse(x, y+length/2, z, length/2);
    recurse(x+length/2, y+length/2, z, length/2);
    recurse(x+length/4, y+length/4, z+length/2, length/2);
  }
  
}
void mousePressed(){
mouseClicks+=1;
}
void Sierpinskify(int x, int y, int z, int length) {
  beginShape();
  vertex(x, y, z);
  vertex(x+length,y,z);
  vertex(x+length/2,y+length/2,z+length);
  vertex(x+length,y,z);
  vertex(x+length, y+length,z);
  vertex(x+length/2, y+length/2, z+length);
  vertex(x+length, y+length, z);
  vertex(x, y+length,z);
  vertex(x+length/2, y+length/2, z+length);
  vertex(x,y+length,z);
  vertex(x,y,z);
  vertex( x+length/2, y+length/2, z+length);
  endShape();
}
