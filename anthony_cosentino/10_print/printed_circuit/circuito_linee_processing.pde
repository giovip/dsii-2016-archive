int x = 0; 
int y = 0;  
int g = 50; //dimensioni griglia

int value;
void setup() {
  frameRate(50);
  fullScreen();
  background(0, 104, 65);
  smooth();
  strokeWeight(2);
}

void draw() {



  if (int (random(4)) == 0) {
    Circuito();
    line(x + g/2, y, x + g/2, y+g);  //disegno linea (|)
    // ellipse(x, y, 8, 8);
  } 
  if (int (random(4)) == 1) {
    Circuito();
    line(x, y+g/2, x + g, y + g/2); //disegno linea (-)
  } 
  if (int (random(4)) == 2) {
    Circuito();
    line(x+g, y, x, y+g); //disegno linea (/)
  } 
  if (int (random(4)) == 3) {
    Circuito();
    line(x, y, x + g, y + g); //disegno linea (\)
  }
  x = x + g;






  if (x >= width) {   //se supera la larghezza della pagina, va a capo e ricomincia da zero_va alla riga seguente
    x = 0; 
    y = y + g;
  }

  if (y >= height) {  //se supera l'altezza della pagina, va a capo e ricomincia da zero con griglia e background differente

    g=50;
    y = 0; 
    
  }
}




void Circuito() {
  fill(0, 104, 65);
  noStroke();
  rect(x, y, width, g);
  stroke(122, 201, 67);
  fill(122, 201, 67);
  ellipse(x, y, 8, 8);
}

void keyPressed() { // premendo 's' pausa e salva il frame, premendo 'r' riproduco da
  switch(key) {
  case 's':
    noLoop();
    saveFrame();
    break;

  case 'r':
    loop();
    break;
  }
}