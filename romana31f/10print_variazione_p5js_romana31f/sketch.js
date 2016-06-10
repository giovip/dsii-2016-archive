    var w = 16;
    var h = 16;
    var index = 0;
    var righe;

function setup() {
      createCanvas(windowWidth, windowHeight);
      background(0,0,0);
      strokeWeight(0.5);
      //stroke(224);
      righe= int(windowHeight/h);
      //smooth(); //togliere per p5js
}

function draw() {
      var x1 = w*index;
      var x2 = x1 + w;
      var y1 = h*(righe-1); //indice della riga
      var y2 = h*righe;
      if (random(2) < 1) {
      	
      	c = color('hsb(278, 85%, 72%)');
      	
        stroke(c);
        strokeWeight(random(0.5));
        noFill();
        ellipse((windowWidth/2), (windowHeight/2), mouseX, mouseY);
        //fill(color(200,33,33));

         
        
      } else {
        stroke(0,random(255),random(255));
        strokeWeight(random(0.5));
        noFill();
        ellipse((windowWidth/2), (windowHeight/2), mouseY, mouseX);
        //fill(color(25,30,200));
        
}
      index++;
      if (index >= windowWidth/w) {
      image = get(0, windowHeight, windowWidth, h*(righe-1));
    
      background(0,0,0);
      set(0, 0, image);
      index = 0;
}



//da inserire sempre utilizzando windoWidth
// se ridimensiona la finestra ricalcola width e height canvas
function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}



} 