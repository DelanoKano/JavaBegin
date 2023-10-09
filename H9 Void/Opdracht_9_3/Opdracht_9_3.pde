float mijngetal;
float mijngetal2;

void setup(){
  mijngetal = mijnMethode(5,6);
  mijngetal2 = mijnMethode(7,5);
  println("de som is " + mijngetal);  
  println("de som is " + mijngetal2);
}  


void draw(){
}

int mijnMethode(int getal, int getaltwee){
  int totaal = (getal + getaltwee) / 2;
return(totaal);
}
