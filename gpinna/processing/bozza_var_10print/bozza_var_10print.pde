int w = 16;
int h = 16;
int index = 0;
boolean pari= true;

void setup() {
  size(640, 384);
  strokeWeight(3);
  smooth();
  stroke (#ffffff);
  background (0);
}

void draw() {
  int x1 = w * index;
  int x2 = x1 + w;
  int y1 = h * 23;
  int y2 = h * 24;

  if (random(2) < 1) {
    line(x2, y1, x1, y2);
  } else {
    line(x1, y1, x2, y2);
  }


  index++;
  if (index == width/w) {
    PImage p = get(0, h, width, h*23);
    if (pari) {
      stroke(255, 255, 255);
      background (0);
      pari= false;
    } else { 
      stroke(0);
      background (255, 255, 255);
      pari= true;
    }

    set(0, 0, p);
    index = 0;
  }
}
