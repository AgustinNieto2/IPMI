//Alumno: Nieto Agustin 119101/6
//comision 3 
//obra OpArt
//
PImage obra;//carga imagen
int diam = 20;//variable diametro de los circulos
int espacio = 60;//
float posX, posY;// variables posicion mouse
color colorCirculos = color(255); //  variable color inicial blanco

void setup() {
  size(800, 400);//establece las dimensiones del lienzo
  obra = loadImage("obra.jpg");//carga la imagen 
}

void draw() {
  background(0);//pinta el fondo del sketch en negro
  image(obra, 0, 0, 400, 400); // dibuja la imagen a la izquierda del sketch
  translate(415, 0); // pasa el sketch a la parte derecha 
  for (int x = 0; x < height; x += espacio) {
    for (int y = 0; y < width; y += espacio) {
      for (int j = 0; j < height; j += espacio) {
        for (int k = 0; k < height; k += espacio) {
          fill(150); //  pinta color rectangulos verticales y horizontales 
          noStroke();//elimina bordes negros de los circulos y los rectangulos
          rect(x, y, width, 10); // dibuja rectangulo horizontal
          rect(x, y, 10, height); // dibuja rectangulo vertical 
          fill(colorCirculos); // utiliza el color actual para los circulos

          ellipse(x, y, 20, 20); // dibuja circulos
        }
      }
    }
  }
}

void mousePressed() {
  colorCirculos = color(random(255), random(255), random(255)); // cambia el color al azar
}
