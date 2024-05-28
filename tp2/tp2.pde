
//Alumno:Nieto Agustin
//Legajo:119101/6
//Comision 3 : Obra de Arte Electronico
PImage img1, img2, img3;
float posX, posY;
int estado;
float textoopaco = 255;
PFont font ;
//variable para contar fotogramas:
int contador;

String texto1, texto2, texto3;
void setup() {
  size(640, 480);
  img1 = loadImage("pantalla1.jpg");
  img2 = loadImage("pantalla2.jpg");
  img3 = loadImage("pantalla3.jpg");
  //textos:

  textAlign(LEFT, BOTTOM);
  font =loadFont ("CalisMTBol-30.vlw");
  textFont(font);
  texto1 = "One-Way Colour Tunnel,hecho por Olafur Eliasson es un túnel de un solo sentido donde los colores y la luz se combinan para crear una experiencia inmersiva y cautivadora para el espectador.";
  texto2 = "Este artista produce obras de arte hipnotizantes que juegan con la percepción del espacio del espectador.";
  texto3 = "De un lado, los paneles triangulares del túnel parecen completamente negros; desde el otro extremo, brilla un espectro multicolor que cambia a medida que los espectadores caminan.";

  //estado 1
  estado = 1;
  contador = 0;
  posX = 10;
  posY = 250;
}
void draw() {
  println("estado="+estado);
  background(0, 255, 0);
  if ( estado == 1 ) {
    //pantalla 1
    image( img1, 0, 0, width, height);
    fill(255);
    textSize(30);
    text ( texto1, posX, posY, 600, 200);

    //cuento los fotogramas y veo si cambio:
    contador++;
    if ( contador>=120 ) {
      //este es un cambio de estado:
      //estado se incrementa a 2
      estado++;
      contador = 0;
    }
  } else if ( estado == 2 ) {
    //transicion 1-2
    image( img1, 0, 0, width, height);
    fill(255, textoopaco);
    text ( texto1, posX, posY, 600, 200);

    textoopaco-=3;
    if (textoopaco<=0) {
      //cambio el estado:
      estado = 3;
      contador = 0;
      posX = 20;
      posY = 250;
      textoopaco = 255;
    }
  } else if ( estado == 3 ) {
    //pantalla 2
    image( img2, 0, 0, width, height);
    fill(255);
    textSize(30);
    text (texto2, posX, posY, 600, 200);

    //cuento los fotogramas y veo si cambia:
    contador++;
    if (contador>= 120) {
      //este es un cambio de estado:
      //se incrementa estado a 4
      estado++;
    }
  } else if ( estado == 4 ) {
    //transicion 2-3
    image( img2, 0, 0, width, height);
    fill(255);
    textSize(30);
    text (texto2, posX, posY, 600, 200);

    posX+=5;
    if (posX>=width) {
      //se incrementa estado a 5:
      estado = 5;
      contador = 0;
      posX = 20;
      posY = 250;
    }
  }
  if ( estado == 5 ) {
    //pantalla 3
    image(img3, 0, 0, width, height);  // Muestra la imagen3
    fill(255, textoopaco);
    textSize(30);
    text(texto3, posX, posY, 600, 200);
    textoopaco-=3;
  }
    fill(255);
    rect(500, 20, 130, 40);
    fill(0);
    textSize(30);
    text("VOLVER", 500, 60);
  }
}
void mousePressed() {
  if (estado==5) {
    if ( mouseX>500 && mouseX<500+150
      && mouseY >40 && mouseY<40+80) {
      estado = 1;
    }
  } else {
    estado++;
    contador = 0;
    posX = 0;
  }
}
