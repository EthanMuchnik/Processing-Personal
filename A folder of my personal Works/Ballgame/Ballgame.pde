import java.util.*;
List<Ball> balls = new ArrayList<Ball>();
int frame = 0;
boolean lose = false;
void setup(){
  frameRate(60);
  size(800,800);
      balls.add(new Ball(random(600) + 100, random(600) + 1, random(10) -5, random(10) - 5, random (50) - 45));

}

void draw(){
  stroke(0);
  background(0);
  frame++;
  if(lose){
  System.out.println("F");
  }
  if(frame%10 == 0){
      balls.add(new Ball(random(600) + 100, random(600) + 1, random(10) -5, random(10) - 5, random (50) +5 ));
  }
    for(int i = 0; i < balls.size(); i ++){
    balls.get(i).move();
    balls.get(i).drawBall();
    balls.get(i).checkCollision();
    }
}
