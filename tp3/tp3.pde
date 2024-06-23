//Alumno: Nieto Agustin 119101/6
//comision 3 
//obra popArt
PImage obra;
int diam = 20;
int espacio = 60;
int contador;
float posX, posY;
color colorCirculos = color(255); // color inicial blanco

void setup() {
  size(800, 400);
  obra = loadImage("obra.jpg");
}

void draw() {
  background(0);
  image(obra, 0, 0, 400, 400); // carga de imagen
  translate(415, 0); // pasa el sketch a la parte derecha 
  for (int x = 0; x < height; x += espacio) {
    for (int y = 0; y < width; y += espacio) {
      for (int j = 0; j < height; j += espacio) {
        for (int k = 0; k < height; k += espacio) {
          fill(150); // color rectangulos verticales y horizontales 
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
