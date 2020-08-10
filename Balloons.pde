//Name : Phimbun Issawilanon
//Date : 10 August 2020
//Draw Balloons 
//You can click the mouse to stop the balloon. And click to make the balloon move.
public class Balloon {
  float pointx,pointy,pointy_1,linelong,radius;
  int y;
  boolean click = false;  
  public void balloon(float pointx_1, float pointy_1, float radius_1, float linelong_1){
    pointx =pointx_1;
    pointy =pointy_1;
    radius =radius_1;
    linelong =linelong_1;
  }  
  public void createbollon(){
    fill(#EFF7D9);
    ellipse(pointx, pointy, radius*2, radius*2);
    line(pointx, pointy+(radius), pointx, linelong+pointy+(radius));
    if (mousePressed){
      click = !click;
      if(click){
        y=0;
      }
      else{
        y=1;
      }
    }
}
  public void move(){
    pointy = pointy-y;
    if(pointy<-height/2){
       pointy = height+150;
     }
     createbollon();
  }
}
Balloon balloon = new Balloon();
Balloon balloon2 = new Balloon();
Balloon balloon3 = new Balloon();
void setup() {
  size(800, 660);
  balloon.balloon(400,200,100,250); 
  balloon2.balloon(600,500,60,100);
  balloon3.balloon(100,50,40,60);
}
void draw(){
  background(#C4F9FF);
  balloon.move();
  balloon2.move();
  balloon3.move();
}
