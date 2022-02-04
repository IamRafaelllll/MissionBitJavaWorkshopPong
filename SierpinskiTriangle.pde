int Start = 250;
int numOfCarpets = 0;
public void setup() {
  size(485, 485);
  background (55, 55, 55);
  fill(255);
}
public void draw() {
  background(55, 55, 55);
  stroke(255);
  fedExCube(162, 162, 162);
}


public void fedExCube(int x, int y, int size) {
  if (size>=2*Start) {

    fedExCube(x+size/3, y-size*2/3, size/3);
    fedExCube(x+size/3, y+size+size*1/3, size/3);
    fedExCube(x-2*size/3, y+size/3, size/3);
    fedExCube(x+4*size/3, y+size/3, size/3);
    fedExCube(x+4*size/3, y-2*size/3, size/3);
    fedExCube(x+4*size/3, y+4*size/3, size/3);
    fedExCube(x-2*size/3, y+size/3, size/3);
    fedExCube(x-2*size/3, y-2*size/3, size/3);
    fedExCube(x-2*size/3, y+4*size/3, size/3);
    rect(x, y, size, size);
  } else {
    rect(x, y, size, size);
  }
}
public void mousePressed() {
  numOfCarpets++;
  if (numOfCarpets<7) {
    Start/=3;
  }

}
