Walker[] bob;
int i = 0;
void setup(){
  size(600,450);
  bob = new Walker[60];
  for(int i = 0; i < bob.length; i++){
    bob[i] = new Walker();
  }
}
void draw(){
  background(205,245,200);
  fill(170,226,255);
  rect(0,0,600,300);
  fill(254,255,201);
  ellipse(60,60,100,100);
  fill(255,182,126);
  triangle(300,360,320,360,310,390);
  fill(54,191,52);
  triangle(310,360,320,345,300,345);
  fill(255,182,126);
  triangle(100,360,120,360,110,390);
  fill(54,191,52);
  triangle(110,360,120,345,100,345);
  fill(255,182,126);
  triangle(500,360,520,360,510,390);
  fill(54,191,52);
  triangle(510,360,520,345,500,345);
  fill(255,182,126);
  triangle(100,360,120,360,110,390);
  fill(54,191,52);
  triangle(110,360,120,345,100,345);
  for(int i = 0; i < bob.length; i++){
    bob[i].show();
    bob[i].walk();
    if (dist(bob[i].myX,bob[i].myY,300,360)<25){
     bob[i].myColor = color(133,216,134);
      }
     if (dist(bob[i].myX,bob[i].myY,100,360)<25){
     bob[i].myColor = color(255,196,217);
      } 
     if(dist(bob[i].myX,bob[i].myY,500,360)<25){
     bob[i].myColor = color(189,188,255);
      }
     if (dist(bob[i].myX,bob[i].myY,300,360)<25){
     bob[i].myColor = color(133,216,134);
      }
     if (dist(bob[i].myX,bob[i].myY,100,360)<25){
     bob[i].myColor = color(255,196,217);
      } 
     if(dist(bob[i].myX,bob[i].myY,500,360)<25){
     bob[i].myColor = color(189,188,255);
      }
  }
 }
class Walker {
  int myX;
  int myY;
  int myColor;
  Walker(){
    myX = myY = 250;
    myColor = 255;
  }
  void walk(){
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show(){
    fill(myColor);
    ellipse(myX,myY,25,25);
    fill(0);
    ellipse(myX-7,myY-5,4,4);
    ellipse(myX+7,myY-5,4,4);
    fill(255,167,167);
    ellipse(myX, myY,6,4);
    fill(myColor);
    ellipse(myX-8,myY-21,8,20);
    ellipse(myX+8,myY-21,8,20);
  }
}
