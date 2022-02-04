int Start = 100;
Boolean qPressed, ePressed;
public void setup(){
  size(500,500);
  background (55,55,55);
  fill(255);
}
public void draw(){
  background(0);
  stroke(255);
  fedExCube(162,162,162);
  if (qPressed=true && Start>3){
    Start/=3;
  }
  if (ePressed=true&& Start>3){
    Start*=3;
  }
  System.out.println(ePressed);
}


public void fedExCube(int x, int y, int size){
  if (size>=2*Start){
    stroke(255);
    fedExCube(x+size/3,y-size*2/3, size/3);
    fedExCube(x+size/3, y+size+size*1/3, size/3);
    fedExCube(x-2*size/3, y+size/3, size/3);
    fedExCube(x+4*size/3, y+size/3, size/3);
    fedExCube(x+4*size/3,y-2*size/3,size/3);
    fedExCube(x+4*size/3,y+4*size/3,size/3);
    fedExCube(x-2*size/3, y+size/3, size/3);
    fedExCube(x-2*size/3, y-2*size/3,size/3);
    fedExCube(x-2*size/3,y+4*size/3,size/3);
    rect(x,y,size,size);
  }
  else{
    rect(x,y,size,size);
  }
}
public void keyPressed(){
 if (key=='e' || key=='E'){
  ePressed=true;
 }
 if (key=='q' || key=='Q'){
   qPressed=true;
 }
 
}
public void keyReleased (){
   if (key=='e' || key=='E'){
  ePressed=false;
 }
 if (key=='q' || key=='Q'){
   qPressed=false;
 }
}
