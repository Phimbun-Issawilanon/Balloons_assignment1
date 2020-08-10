//Name : Phimbun Issawilanon
//Date : 10 August 2020
//Draw Balloons 
//You can click the mouse to stop the balloon. And click to make the balloon move.
public class Balloon {
  float pointx,pointy,pointy_1,linelong,radius;
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
  }
}
