// Fuente de imagen: https://images.app.goo.gl/LrKAu9aECgv7cUDW7 
int Cantfor=8;
int ancho;
int alto;
color colorFondo= color(0);
color colorFondo2= color(255);
int contador=0;
int grados=0;
boolean Elrect=true;
 void setup(){
  size(500,500);
  ancho=width/Cantfor;
  alto=height/Cantfor;
  frameRate(20);
  }
 void draw(){
  contador++;
  println(contador); 
  for(int j=0; j<Cantfor; j++){ 
  for(int i=0; i<Cantfor; i++){
  fill(colorFondo);
  stroke(160,152,152);
  strokeWeight(10);
  rect(i*ancho,j*alto,ancho,alto);
  }}
  for(int k=0; k<Cantfor; k++){
  for(int y=0; y<Cantfor; y++){ 
  fill(colorFondo2);
  noStroke();
  ellipse(k*ancho,y*alto, 20,20);
  rotate(radians(grados));
  }}
 if(contador>=400){
  grados++;
  Elrect=true;
  }
  if(keyCode==LEFT){
  grados=0;
  contador=0;
  Elrect=false;
  }else if(contador>=600&&Elrect==true){
   grados=0;
   fill(random(200));
   rect(130,130,237,237);
  }}
  
  void mouseMoved(){
  colorFondo=round(map(mouseY,0,height,0,255)); 
  colorFondo2=round(map(mouseY,0,height,255,0));
  }
  
