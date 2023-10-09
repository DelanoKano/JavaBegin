String zoekNaam = "Debbie";
Boolean gevonden = false;
String[] namen = {"Piet", "Willem", "Jan", "Jordy"};



void setup(){
  for(int i = 0; i < namen.length; i++){
  if(zoekNaam == namen[i]){
    gevonden = true;
  }
 }
  if(gevonden){
    println("ja de naam " +  zoekNaam + " bestaat wel !");
 }else{
   println("De naam die je hebt ingevoerd " + zoekNaam + " Ben ik niet bekent mee ");
 }
}
