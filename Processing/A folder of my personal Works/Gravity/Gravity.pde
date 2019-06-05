float yPos = 50;
float xPos = 50;
int grav = 1;
float ySpeed = 3;
float xSpeed = 0;
float diameter = 20;
void setup()
{
  background(204, 30,200);
  size (500,400);
  circle(300,yPos,20);
}
void draw()
{
   background(204, 30,200);
   strokeWeight(2);
   circle(xPos,yPos,diameter);
   if (keyPressed)
  {
    if (key == 'd') xSpeed+=0.5 ;
    else if (key == 'a') xSpeed +=-0.5;
      
  }
  if ((yPos+diameter/2) > height)
  {
    ySpeed = -ySpeed;
  }
  else
  {
    ySpeed+=grav;
  }
  yPos+=ySpeed;  
  xPos+=xSpeed;
  System.out.println(xSpeed);
  inputLine();
}

void inputLine()
{
  strokeWeight(5);
  line(xPos ,yPos, xPos + xSpeed, yPos);
}
