// Fuente de imagenes:
// Imagen 1: https://images.app.goo.gl/6eFuMK4Z26niFPpm6 
// Imagen 2: https://images.app.goo.gl/DBfkMnoE6Cuqk9AL6
// Imagen 3: https://images.app.goo.gl/LeSUpXPCeSCqyRsE8
// Imagen 4: https://images.app.goo.gl/ejp7SyBSZWWf3W5L9
// Imagen 5: https://images.app.goo.gl/nu4fNbLsS5mop2VA9
// Imagen 6: https://images.app.goo.gl/CAgBGbk1ntcGq1HN7 
// Imagen 7: https://images.app.goo.gl/VJZoyvsNrSXNknFb6
PImage Imagen1, imagen2, imagen3, imagen4, imagen5, imagen6, imagen7;
PFont miTipografia, miTipografia2;
int Estado=1;
int contador=0;
float UnColor= (random(255));
boolean ElTexto=false;
boolean ElTexto2=false;
boolean Inicio=false;
void setup(){
 size(400,400);
}
void draw(){
  background(200);
  miTipografia= loadFont("Perpetua-BoldItalic-48.vlw");
  miTipografia2= loadFont("MicrosoftUighur-Bold-48.vlw");
  Imagen1= loadImage("Imagen_1.jpg");
  imagen2= loadImage("imagen_2.jpg");
  imagen3= loadImage("imagen_3.jpg");
  imagen4= loadImage("imagen_4.jpg");
  imagen5= loadImage("imagen_5.jpg");
  imagen6= loadImage("imagen_6.jpg");
  imagen7= loadImage("imagen_7.jpg");
  contador++;
 if((contador%10)==0){
   Estado= Estado+1; 
   }
    println(contador);
 if(Estado==1){
   image(Imagen1,0,0,width,height);
   textFont(miTipografia,48);
   textSize(50);
   fill(255,255,255);
   text("El Patito feo", 80,50);
 }else if (Estado==2){
   image(imagen2,0,0,width,height);
   textFont(miTipografia2,48);
   textSize(50);
   fill(0);
   text("Protagonista:",10,45);
   text("'El Patito feo'",190,292);
 }else if (Estado==3){
   image(imagen3,0,0,width,height); 
   textFont(miTipografia2,48);
   textSize(50);
   fill(0);
   text("Personajes secundarios:",5,45);
   text("'Patitos Bebes 1,2,3 y 4'", 5,80);
   text("'Mama Pata'",210,388);
 }else if(Estado==4){
   image(imagen4,0,0,width,height);
   textFont(miTipografia2,48);
   textSize(50);
   fill(0);
   text("'Mama Cisne'",180,388);
   text("'Cisnes Bebes 1,2,3 y 4'",5,40);
 }else if(Estado==5){
    image(imagen5,0,0,width,height); 
    textFont(miTipografia2,48);
    textSize(50);
    fill(0);
    text("Produccion:",5,35);
    text("'El Patito Feo'",180,68);
    text("Direccion:",5,240); 
    text("'Mama Pata'",178,240); 
    text("'El Patito Feo'",178,280);
 }else if(Estado==6){
   image(imagen6,0,0,width,height);
   textFont(miTipografia2,48);
   textSize(50);
   fill(0);
   text("Musica:",10,40);
   text("'Mama Cisne'",129,40);
 }else{ 
   image(imagen7,0,0,width,height);
  } 
   if(contador==62){
    Inicio=true; 
   }
 if(Inicio==true){
   textSize(50);
   fill(random(255),random(255),random(255));
   text("Haga click en la pantalla",10,50); 
   }
 if(ElTexto==true && contador>=64){
   Inicio=false;
   textFont(miTipografia,48);
   textSize(120);
   fill(random(255),random(255),random(255));
   text("Fin",20,100);
   }
 if(ElTexto2==true||contador>=78 && ElTexto==true){ 
   textFont(miTipografia,48);
   textSize(120);
   fill(random(255),random(255),random(255));
   text("Fin",200,100);
   }
 if(contador>=80&&ElTexto==true){
   textFont(miTipografia,48);
   textSize(120);
   fill(random(255),random(255),random(255));
   text("Fin",20,315); 
   }
 if(contador>=85&&ElTexto==true){
   textFont(miTipografia,48);
   textSize(120);
   fill(random(255),random(255),random(255));
   text("Fin",200,315); 
   }}
void mouseClicked(){
   ElTexto=true;
   } 
void keyPressed(){
   ElTexto2=true; 
   }
