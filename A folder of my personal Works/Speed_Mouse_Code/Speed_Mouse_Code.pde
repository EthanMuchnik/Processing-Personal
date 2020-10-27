
void setup()
{
  size(640,360);
  background(255,0,60);
}

void draw(){
background(255,0,60);
text("Click and drag the mouse as quickly as u can and the screen will be black",100,180);
}

void mouseDragged()
{
  if(abs(pmouseX-mouseX)+abs(pmouseY-mouseY)>5)
{
  background(50,0,0);
}
if(abs(pmouseX-mouseX)+abs(pmouseY-mouseY)<5)
{
  background(250,30,180);
}

}
