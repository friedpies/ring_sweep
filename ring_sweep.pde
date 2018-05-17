PGraphics pg;
PImage ring;
float counter = 0;
float progress = 0;

void setup(){
  ring = loadImage("rings_5px.png");
  size(400,400);
  pg = createGraphics(5362, 5362, JAVA2D);
  pg.smooth();
  pg.beginDraw();
  while (counter <= 2*PI){
  pg.pushMatrix();
  pg.translate(2681, 2681);
  pg.rotate(counter);
  pg.image(ring, 0, 0);
  pg.popMatrix();
  counter = counter + .00035;
  progress = (counter / (2*PI)) * 100;
  println(progress + "%");
  }
    pg.save("ring_export.png");
  pg.endDraw();
  exit();
}



void draw(){
 
}
