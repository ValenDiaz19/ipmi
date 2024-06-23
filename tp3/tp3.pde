//Diaz Valentina Comision 2 Legajo:119013/7
//https://youtu.be/pZZkIbZQsME
// Declaro Variables 
int CantidadPuntos = 20;
float TamañoP = 10; 
float Espacio = 20;
float RadioInteraccion = 80; 
color ColorPunto = color(255);
boolean CambioColor = false;
int UltimoCambioColor = 0;
PImage imagenF10; 

void setup() {
  size(800, 400);
  background(0);
  noStroke();
  imagenF10 = loadImage("imagen1.jpg");
}

void draw() {
  background(0);
  image(imagenF10, 0, 0, 400, 400);
  Interaccion();
}

void Interaccion() {
  
  if (CambioColor && frameCount - UltimoCambioColor > 10) {
    ColorPunto = color(random(255), random(255), random(255));
    UltimoCambioColor = frameCount;
  }
  fill(ColorPunto);
  for (int i = 0; i < CantidadPuntos; i++) {
    for (int a = 0; a < CantidadPuntos; a++) {
      float distancia = dist(mouseX - 400, mouseY, i * Espacio, a * Espacio);
      float tam = calcularTamañoPunto(distancia, RadioInteraccion, TamañoP);
      ellipse(i * Espacio + 400, a * Espacio, tam, tam);
    }
  }
}
float calcularTamañoPunto(float distancia, float radio, float tamañoBase) {
  return map(distancia, 0, radio, tamañoBase * 1.5, tamañoBase / 2);
}
//Cambio de Colores
void mousePressed() {
  CambioColor = true;
}
//Reinicio Color con cualquier tecla
void keyPressed() {
  TamañoP = 10;
  CambioColor = false;
  ColorPunto = color(255);
}
