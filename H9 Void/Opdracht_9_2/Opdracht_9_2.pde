float getalEen =6.8;

void setup(){
  mijnMethode(getalEen, 4.6);
  mijnMethode(getalEen, 7.1);
 
}

void draw(){
}

void mijnMethode(float getalEen, float getaltwee){
float totaal = (getalEen + getaltwee) / 2;
println("Het gemiddelde van de som =  " + totaal);


}
