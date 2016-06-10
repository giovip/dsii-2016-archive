    var w = 16;
    var h = 16;
    var index = 0;
    var righe;

function setup() {
      createCanvas(windowWidth, windowHeight);
      background(100,100,124);
      strokeWeight(3);
      stroke(224);
      righe= int(windowHeight/h);
      //smooth(); //togliere per p5js
}

function draw() {
      var x1 = w*index;
      var x2 = x1 + w;
      var y1 = h*(righe-1); //indice della riga
      var y2 = h*righe;
      if (random(2) < 1) {
        ellipse(MouseX, MouseY, x1, y1);
      } else {
        line(x1, y1, x2, y2);
}
      index++;
      if (index >= windowWidth/w) {
        image = get(0, h, windowWidth, h*(righe-1));
        background(100,100,124);
        set(0, 0, image);
        index = 0;
}



//da inserire sempre utilizzando windoWidth
// se ridimensiona la finestra ricalcola width e height canvas
function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}



} 