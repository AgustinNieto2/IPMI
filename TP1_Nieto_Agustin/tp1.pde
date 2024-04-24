PImage img ;
void setup() {
  size(800, 400);
  img =loadImage ("R2D2.png");
}

void draw() {
   background(255); 
   image(img,0,0);
   // CABEZA DEL ROBOT
   fill (200);
   arc (640.5,110,140,170,radians(180),radians(360));
   fill (0,0,200);
   rect (625,45,40,40);
   fill (0);
   ellipse (640,60,20,20);
   fill (255);
   ellipse (640,60,5,5);
   fill (150);
   ellipse (675,95,15,15);
   fill (180);
   ellipse (675,95,12,12);
   fill (0);
   ellipse (675,95,5,5);
   fill (0,0,200);
   rect (630,88,30,15);
   fill (255,0,0);
   ellipse (651,95,10,10);
   
   
  //CUERPO DEL ROBOT
   fill (255);
   rect (624,290,30,50); 
   rect (570,110,140,200);
   rect (714,115,30,220); //((BRAZO IZQ))
   rect (536,115,30,220);//((BRAZO DER))
   fill (0,0,200);
   rect (624,265,30,30);
   rect (570,105,140,10);
   rect (624,180,30,60);
   rect (594,125,95,10);
   rect (733,200,10,80);
   rect (537,200,10,80);
   rect (533,170,5,20);
   rect (742,170,5,20);
   fill(150);
   rect (636,269,5,22);
   rect (628,277,22,5);
   rect (626.5,212,25,25);
   rect (626.5,184,25,25);
  
   //Pies del ROBOT
  fill (255);
   rect(525,320,50,50);
   rect(705,320,50,50);
   rect(618,320,42,42);
    fill(0); 
     text ("Agustin Nieto - R2D2 de STAR WARS",305,30);
     textSize(15);
 
}
