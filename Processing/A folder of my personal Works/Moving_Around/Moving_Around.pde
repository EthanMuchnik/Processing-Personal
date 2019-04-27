
  int x=0;
  int y=0;
void setup()
{
  size(500,500);
}

void draw()
{
  background(50,25,200);
  int millis= millis()/1000;
  textSize(74); 
  text(x,100,180);
  text(y,100,300);
  if (keyPressed)
  {
    if (key == 'd')  keyPressedD();
    
    else if (key == 'a') keyPressedA();
    
    else if (key == 'w') keyPressedW();

    else if (key == 's') keyPressedS();
    
  }
  rect(50+x,50+y,100,100);
  //text(oof(),300,190);
}
//public String oof()
//{
//  String oof2 = "oooooof";
// return oof2 ;
//}

void keyPressedD()
{
  if(x <350)
  x++;
}
void keyPressedA()
{
  if(x >-50)
  x--;
}void keyPressedS()
{if(y < 350)
  y++;
}void keyPressedW()
{
  if(y >-50)
  y--;
}

  
