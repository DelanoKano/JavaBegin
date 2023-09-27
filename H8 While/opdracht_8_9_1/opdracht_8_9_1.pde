size(700,700);
background(255,255,255);

int sizeC= 10;

for(int i = 0; i <50; i++){
  fill(210,67,100);

  ellipse(0 - sizeC/2, 0 - sizeC/2, sizeC/2, sizeC/2);
  sizeC= sizeC - 10;
}  
