String zin = "Dit is een zin met meerdere woorden";


String [] woorden = zin.split(" ");


//tel het aantal woorden in de zin


//plekje maken om een getal te onthouden
int aantal = 0;
//een voor een de woorden afgaan
for(String woord : woorden){
 //voor ieder woord +1 doen 
  aantal++;
  
}

//laat de gebruiker weten hoeveel woorden er zijn
println("Aantal woorden: " + aantal);

int aantalKorter = woorden.length;
println("aantal woorden: " + aantalKorter);
