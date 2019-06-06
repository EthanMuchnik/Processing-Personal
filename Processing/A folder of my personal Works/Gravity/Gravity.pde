float yPos = 250;
float xPos = 50;
int grav = 1;
float ySpeed = 0;
float xSpeed = 0;
float diameter = 20;
float yTarget = mouseY;
float xTarget = mouseX;
float pValue = 0.1;
float ySpeedPrevious;
float xSpeedPrevious;
void setup()
{
  background(204, 30,200);
  size (500,400);
  circle(300,yPos,20);
  frameRate(30);
}
void draw()
{
    xTarget = mouseX;
    yTarget = mouseY;
    background(204, 30,200);
    strokeWeight(2);
    circle(xPos,yPos,diameter);
    line(xPos ,yPos, (xPos + xSpeed*5), yPos);
    line(xPos ,yPos, xPos, (yPos + ySpeed*5));
    ySpeed = (yTarget-yPos)*pValue;
    xSpeed = (xTarget-xPos)*pValue;
    yPos+=ySpeed;  
    xPos+=xSpeed;
    ySpeedPrevious = ySpeed;
    xSpeedPrevious = xSpeed;
    
}
  
