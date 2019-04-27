Ball ball1;
Ball ball2;
Ball ball3;
void setup() {

  size(300,200);
  frameRate(50);
   ball1 = new Ball(100,100,55,1,3);
   ball2 = new Ball(50,150,30,2,1);
   ball3 = new Ball(70,45,145,2,3);
}

boolean collision = false;
void draw() {
  background(204);
  square(mouseX, mouseY, 10);
  ball1.all();
  ball2.all();
  ball3.all();
  
}


 
