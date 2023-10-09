int getalEen = 2;
int getalTwee = 2;

void setup(){
  mijnMethode();
}

void draw(){
}  

void mijnMethode(){
  getalEen = getalEen * getalTwee / getalTwee;
  
  println(getalEen);
}  
