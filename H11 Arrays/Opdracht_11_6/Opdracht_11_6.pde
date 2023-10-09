int aantalgevonden = 0;
int zoekgetal = 6;
Boolean gevonden = false;
int[] getallen = {8,4,5,6,2,6,7,5,9,6};


void setup(){
 for(int i = 0; i < getallen.length; i++){
   if(zoekgetal == getallen[i] ){
   gevonden = true;
   aantalgevonden++;
 }
}
 if(gevonden){
   println("Het aantal zelfde getallen die gevonden zijn :  " + aantalgevonden);
 }else{
   println("Dit getal " + zoekgetal + " ken ik niet"); 
 }
}
 
