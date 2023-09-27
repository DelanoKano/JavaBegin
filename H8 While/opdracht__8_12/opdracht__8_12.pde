size(600,600);
background(255,255,255);

int ywaarde  = 50;
int xwaarde  = 50;

for( int i = 0; i < 10; i++){
for( int j = 0; j < 10; j++){
  if ((i + j) % 2 ==0){
  fill(89,67,89);
} else {
  fill(255,89,0);
}  
stroke(255);
rect(xwaarde, ywaarde, 50, 50);
  ywaarde = ywaarde + 50;
}
ywaarde = 50;
xwaarde = xwaarde + 50;

}
