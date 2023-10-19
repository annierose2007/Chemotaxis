Walker[] bob;
void setup(){
  size(600,600);
  bob = new Walker[36];
  for(int i = 0; i < bob.length; i++){
    bob[i] = new Walker();
  }
}
void draw(){
  background(205,245,200);
  fill(170,226,255);
  rect(0,0,600,350);
  fill(254,255,201);
  ellipse(60,60,100,100);
  fill(255,182,126);
  triangle(500,360,520,360,510,390);
  fill(54,191,52);
  triangle(510,360,520,345,500,345);
  for(int i = 0; i < bob.length; i++){
    bob[i].show();
    bob[i].walk();
  
  }
 }
class Walker {
  int myX;
  int myY;
  Walker(){
    myX = myY = 250;
  }
  void walk(){
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show(){
    fill(255);
    ellipse(myX,myY,25,25);
    fill(0);
    ellipse(myX-7,myY-5,4,4);
    ellipse(myX+7,myY-5,4,4);
    fill(255,167,167);
    ellipse(myX, myY,6,4);
    fill(255);
    ellipse(myX-8,myY-21,8,20);
    ellipse(myX+8,myY-21,8,20);
    
  }
}
    
