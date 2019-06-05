Ball ball1;
Ball ball2;
Ball ball3;
Ball ball4;
Ball ball5;
int Width = 10;
int x = 1;
void setup() {

  size(400,300);
  frameRate(60);
   ball1 = new Ball(60,100,75,1,3);
   ball2 = new Ball(45,150,90,2,1);
   ball3 = new Ball(70,50,145,2,3);
   ball4 = new Ball(90,150,90,4,1);
   ball5 = new Ball(30,45,145,3,2);
  
}

boolean collision = false;
void draw() {
  

  background(204, 30,200);
  
  square(mouseX- Width/2, mouseY-Width/2, Width);
  ball1.all();
  ball2.all();
  ball3.all();
  ball4.all();
  ball5.all();
  
}


 
