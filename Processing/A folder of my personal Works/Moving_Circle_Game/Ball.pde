class Ball
{
    int m_diameter;
    int m_xPos;
    int m_yPos;
    int m_radius;
    int m_xSpeed;
    int m_ySpeed;
  public Ball(int diameter,int xPos, int yPos, int xSpeed, int ySpeed)
  {
    m_xSpeed = xSpeed;
    m_ySpeed = ySpeed;
    m_diameter = diameter;
    m_xPos = xPos;
    m_yPos = yPos;
    m_radius = diameter/2;
  }
  public void all()
  {
    show();
    collideWall();
    collisionCheck();
  }
  public void show()
  {
     circle(m_xPos,m_yPos, m_diameter);
  }
  public void collideWall()
  {
    if(m_xPos > width-m_radius || m_xPos < m_radius)
  {
    m_xSpeed*=-1;
  }
  if(m_yPos > height - m_radius || m_yPos < m_radius)
  {
    m_ySpeed*=-1;
  }
  m_xPos+= m_xSpeed;
  m_yPos+= m_ySpeed;
  }
  void collisionCheck()
{
  if(mouseX > m_xPos - m_radius && mouseX < m_xPos + m_radius && mouseY > m_yPos - m_radius && mouseY < m_yPos + m_radius)
  {
     collision = true;
     if(collision == true)
     {
       text("Collision", 30,30);
     } 
     else
     {
       collision = false;
     }
     exit();
  }
} 
}
