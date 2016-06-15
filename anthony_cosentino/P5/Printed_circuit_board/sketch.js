var x = 0; 
var y = 0;
var g = 50; //dimensioni griglia


function setup() {
  frameRate(50);
  createCanvas(fullscreen);
  background(0, 104, 65);
  smooth();
  strokeWeight(2);
}

function draw() {

  /*RigheNere();
   if (value== 0) {
   ellipse(x, y, 8, 8);
   line(x, y+g/2, x + g, y + g/2);  //disegno linea (-)
   } else {
   line(x + g, y, x, y+g); //disegno linea (/)
   //ellipse(x, y, 8, 8);
   fill(0);
   stroke(122, 201, 67);
   }
   x = x + g;*/

  if (int (random(4)) == 0) {
    RigheNere();
    line(x + g/2, y, x + g/2, y+g);  //disegno linea (|)
    // ellipse(x, y, 8, 8);
  } 
  if (int (random(4)) == 1) {
    RigheNere();
    line(x, y+g/2, x + g, y + g/2); //disegno linea (-)
  } 
  if (int (random(4)) == 2) {
    RigheNere();
    line(x+g, y, x, y+g); //disegno linea (/)
  } 
  if (int (random(4)) == 3) {
    RigheNere();
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
    //Cambio();
  }
}




function RigheNere () {
  fill(0, 104, 65);
  noStroke();
  rect(x, y, width, g);
  stroke(122, 201, 67);
  fill(122, 201, 67);
  ellipse(x, y, 8, 8);
  
}

function keyPressed() { // se premo 'n' fermo il loop e salvo l'immagine, se premo 'l' riprendo il loop 
  switch(key) {
  case 'n':
    noLoop();
    saveFrame();
    break;

  case 'l':
    loop();
    break;
  }
}