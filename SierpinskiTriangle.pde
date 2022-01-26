

float rot = 0;
ArrayList<Boxy> boxArr;
void setup() {
  size(400, 400, P3D);
  boxArr = new ArrayList<Boxy>();
  Boxy AmazonPrime = new Boxy(0, 0, 0, 200);
  boxArr.add(AmazonPrime);
}
void mousePressed() {
  ArrayList<Boxy> FedExBoxes = new ArrayList<Boxy>();
  for (Boxy AmazonPrime : boxArr) {
    ArrayList<Boxy> USPSBoxes = AmazonPrime.recursion();
    FedExBoxes.addAll(USPSBoxes);
  }
  boxArr = FedExBoxes;
}

void draw() {
  
  background(0);
  noStroke();
  noFill();
  lights();
  
  translate(width/2, height/2);
  rotateX(rot);
  rotateY(rot*0.2);
  rotateZ(rot*0.2);
  
  for (Boxy b : boxArr) {
    b.show();
  }
  rot+= 0.04;
}
