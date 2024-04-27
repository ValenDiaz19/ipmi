PImage img;
void setup (){ 
  size (800,400);
  img= loadImage("Paisaje.jpg");
  background(117, 116, 116);
    image(img, 400, 0);
}
void draw () {
   println (mouseX + " /" + mouseY);
 //Luz
 noStroke();
 fill(142, 142, 142,5);
 ellipse(195,20,350,300);   
 fill(220, 220, 220,10);
 ellipse(195,20,200,200);
 
 //Montaña del fondo 
 fill(87,87,87);
 triangle(195,57,400,166,0,166);
 triangle(100,101,0,123,76,155);

//Montaña Derecha Fondo 
 fill(77,77,77);
 triangle(400,137,227,166,400,166);
 
//Montaña Izquierda Fondo 
 fill(29, 29, 29);
 quad(0,120,50,128,116,167,0,167);
 
//Nubes Fondo 
 fill(200, 200, 200);
 rect(50,165,350,100);
 quad(400,166,378,157,370,156,355,166);
 quad(344,165,335,155,324,157,313,165);
 triangle(110,165,99,161,96,165);
 triangle(96,165,88,161,84,165);
 triangle(84,165,77,161,70,165);
 
//Montaña Izquierda Frente 
 fill(42, 42, 42);
 quad(0,150,43,165,83,187,110,279);
 quad(83,187,107,185,166,212,162,234);
 quad(166,212,215,215,219,220,219,222);
 triangle(220,218,400,241,219,241);
 rect(0,241,400,100);
 quad(83,187,100,242,219,241,219,222);
 triangle(0,150,78,242,0,242);
 
//Nubes Frente
 fill(180, 180, 180);
 rect(0,300,298,372);
 quad(220,300,230,290,250,290,255,300);
 quad(255,300,250,290,266,277,320,334);
 quad(220,300,147,262,105,281,104,301);
 quad(104,301,104,281,82,281,70,300);
 ellipse(44,300,60,50);
 ellipse(16,300,50,55);

//Montaña Derecha Frente 
 fill(8,8,8);
 quad(400,320,387,321,320,310,290,328);
 quad(290,328,208,327,180,346,163,348);
 quad(180,346,160,350,130,371,117,381);
 quad(400,400,400,320,290,328,180,346);
 quad(400,400,180,346,117,381,117,400);
 bezier(117,381,92,364,25,380,0,372);
 quad(0,372,117,381,117,400,0,400);
}
