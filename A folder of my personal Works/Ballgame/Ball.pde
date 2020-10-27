class Ball{
  float x;
  float y;
  float vx;
  float vy;
  float rad;
  public Ball(float xpos, float ypos, float velx, float vely,float radius){
    x = xpos;
    y = ypos;
    vx = velx;
    vy = vely;
    rad = radius;
  }
  
  void drawBall(){
   ellipse(x,y,rad,rad);
  }
  
  void move(){
    x += vx;
    y += vy;
    if(x>800 || x < 0){
    vx*=-1;
    }
    if(y>800 || y < 0){
    vy*=-1;
    }
  }
  
  void checkCollision(){
    double dist = Math.sqrt(Math.pow(x-mouseX,2) + Math.pow(y-mouseY, 2));
    //System.out.println(dist);
    if(rad > dist){
    
      text("OOF",100,100);  
      lose = true;
    }
}
}
