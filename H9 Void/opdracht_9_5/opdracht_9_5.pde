String zin;

void setup(){
  
  size(200,200);
  zin = langesom("Hey", "ik vind jou niet aardig,", "Oke?,","Nee grapje :)");
  println(zin);
}


void draw(){
  background(0);
  
}  

String langesom(String a,String b,String c,String d){
  String antwoord;
  antwoord = a + " " + b + " " + c + " " + d;
  return antwoord;
  
}  
