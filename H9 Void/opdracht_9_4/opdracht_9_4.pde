
 
void setup(){
  size(500,500);

}  
 
void draw(){
background(0);
//rect (100,100,100,100);
stroke(255,255,255,255);
vierkant(100,100,100,100);

}  
void vierkant( int x, int y, int w, int h){
  //boven lijn
  line(x,y,x+y,y);
  //onderlijn
  line(x,y+h,x+w,y+h);
  //rechterlijn
  line(x+w,y,x+w,y+h);
  //linkerlijn
  line(x,y,x,y+h);
}
  
