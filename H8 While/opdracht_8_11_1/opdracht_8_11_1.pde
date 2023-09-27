size(600,600);
background(255,255,255);

int xwaarde= 50;
int ywaarde= 50;

for(int i = 0; i < 10; i++){
  for(int j = 0;j <10; j++){
  rect(xwaarde,ywaarde, 50,50);
  ywaarde = ywaarde + 50;
    }
    
    ywaarde = 50;
    xwaarde = xwaarde + 50;
}
