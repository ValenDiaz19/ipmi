////Diaz Valentina Comision 2 Legajo:119013/7

// Variables Pantallas
int pantalla = 0;
int tiempoTransicion = 10;
int tiempoActual = 0;
boolean inicio = false;
boolean inicioPantalla1 = false;
boolean inicioPantalla2 = false;
boolean inicioPantalla3 = false;

// Variables Imagenes
PImage imagen1, imagen2, imagen3, imagen4;

// Variables textos
String texto2 = "  Identity V es un juego multijugador de terror y\n       supervivencia desarrollado por la empresa \n                                   NetEase.\n Fue lanzado en 2018 para dispositivos móviles \n                y más tarde para ordenadores.";
String texto3 = "  El juego es un 4VS1, un jugador es el Cazador,\n                      que debe de encontrar a los Supervivientes y eliminarlos,\n                                                     mientras que ellos deben de descifrar cinco máquinas \n                                                                                                  para conseguir activar las dos puertas de salida y abrirlas.";
String texto4 = "                    En total hay 74 personajes\n (44 supervivientes y 30 cazadores actualmente). \n\n\n\n\n\n\n\n  Cada personaje cuenta con habilidades únicas";

// Variables Fuente Texto
PFont fuente;
int tamañoTexto = 36;


void setup() {
  size(640, 480);
  fuente = createFont("Essay Text W01 Italic.ttf",36);
  textFont(fuente);
  textSize(tamañoTexto);
  
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
  imagen4 = loadImage("imagen4.jpg");
  
}

void draw() {
  background(0);
   
  // Pantalla 1: Boton Inicio
  if (pantalla == 0) {
    image(imagen1, 0, 0, width, height);
    fill(58, 72, 89);
    rect(0, height - 40, width/5, 50);
    fill(0);
    text("Iniciar", width/30, height - 10);
    if (inicio) {
      inicioPantalla1 = true;
      inicio = false;
    }
    if (inicioPantalla1) {
      pantalla = 1;
      inicioPantalla1 = false;
      tiempoActual = millis();
    }
  }
  
  // Pantalla 2: Texto Abajo Arriba 
  else if (pantalla == 1) {
    image(imagen2, 0, 0, width, height);
    fill(255);
    float y = height - (millis() - tiempoActual) / 15;
    fill(226, 215, 138);
    text(texto2, width/45, y);
    if (millis() - tiempoActual > tiempoTransicion * 1000 && !inicioPantalla2) {
      pantalla = 2;
      tiempoActual = millis();
    }
  }
  
  // Pantalla 3: Texto Derecha a Izquierda
  else if (pantalla == 2) {
    image(imagen3, 0, 0, width, height);
    fill(255);
    float x = width-(millis() - tiempoActual) / 10;
    fill(226, 215, 138);
    text(texto3, x, height/2);
    if (millis() - tiempoActual > tiempoTransicion * 2000 && !inicioPantalla3) {
      pantalla = 3;
      tiempoActual = millis();
    }
  }
  
  // Pantalla 4: Texto Fade In
  else if (pantalla == 3) {
    image(imagen4, 0, 0, width, height);
    float alpha=(millis() - tiempoActual) / 10;
    fill(187, 35, 0,alpha);
    text(texto4, width/55, height/19);
    if (millis() - tiempoActual > tiempoTransicion * 1000) {
      pantalla = 4;
    }
  }
  
  // Botón Reinicio
  else if (pantalla == 4) {
    fill(255);
    rect(0, height - 40, width, 60);
    fill(0);
    text("Reiniciar", width/2.5, height - 10);
  }
}
void mousePressed() {
  if (pantalla == 0 && mouseY > height - 50) {
    inicio = true;
  }
  if (pantalla == 4 && mouseY > height - 50) {
    pantalla = 0;
    inicioPantalla1 = false;
    inicioPantalla2 = false;
    inicioPantalla3 = false;
    tiempoActual = millis();
  }
}
