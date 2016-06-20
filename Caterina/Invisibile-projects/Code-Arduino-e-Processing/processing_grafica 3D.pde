import peasy.*;
import processing.serial.*;

Serial myPort;  // Create object from Serial class
String val;     // Data received from the serial port
float valore;
float traY=0, rotX=0;

PeasyCam cam;

//array di valori

IntList Valori;
int totaleValori = 60;

IntList ValoriTemp;
int totaleValoriTemp=120;

float secondi;
float ora = 0;
int radius= 0;
int raggio;
int z = raggio;

public float RX=1.3*PI-PI;  // posizione iniziale dell'oggetto   
public float RY;
public float RZ;
int add =4;
int timer =0;

void setup() {

  // Reed port value.
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  println(Serial.list());
  myPort = new Serial(this, portName, 9600);

  Valori = new IntList(); //valori è un nuovo array
  ValoriTemp = new IntList(); //nuovo array

  size(700, 700, P3D);
  background(0);
  stroke(255);
  noFill();
  
}

void draw() {
  lights();

  translate(width/2, height/2, -100);

  rotateX(RX);  
  rotateY(RY);  
  rotateZ(RZ); 

  strokeWeight(1);
  stroke(255, 255, 255, 10);
  //background(0);
  //dammi un valore di media dei valori di ogni secondo
  secondi = millis()/1000;
  if (secondi-ora >= 1) {
    media();
  } 
  ora = secondi;

  pushMatrix();

  for (int i=0; i<add; i++ ) {

    translate(0, i+100, 0);
  }
  popMatrix();
  //mappa i valori di arduino con una dimensione
  for (int h=0; h<Valori.size(); h++) {
    int raggio = (int) map(Valori.get(h), 0, 2000, 0, height/2);
    ellipse(width/2, height/2, raggio*2, raggio*2);
  }





  /*for(int i=0; i<Valori.size(); i++){
   //int radius = (int) map(Valori.get(i), 0, 2000, 0,height/2);
   beginShape();
   float x = cos( radians( i * 12 ) ) * radius;
   float y = sin( radians( i * 12 ) ) * radius;
   vertex( cos( radians( i * 6 ) ) * (radius-50)+width/2, sin( radians( i * 6 ) ) * (radius-50)+height/2 );
   //vertex( cos( radians( i * 6 ) ) * (radius/2)+width/2, sin( radians( i * 6 ) ) * (radius/2)+height/2 );
   //vertex( x+10+width/2, y+10+height/2 );
   endShape();
   }/*/

  /* for(int i=0; i<ValoriTemp.size(); i++){
   //int radius = (int) map(Valori.get(i), 0, 2000, 0,height/2);
   beginShape();
   float x = cos( radians( i * 12 ) ) * radius;
   float y = sin( radians( i * 12 ) ) * radius;
   int xvertice = int (cos( radians( i * 6 ) ) * (radius-50)+width/2);
   int yvertice = int(sin( radians( i * 6 ) ) * (radius-50)+height/2) ;
   vertex(xvertice, yvertice,100);
   //vertex( cos( radians( i * 6 ) ) * (radius/2)+width/2, sin( radians( i * 6 ) ) * (radius/2)+height/2 );
   //vertex( x+10+width/2, y+10+height/2 );
   endShape();
   }*/
}



//fai la media
void media() {
  int somma = 0;
  for (int i=0; i<ValoriTemp.size(); i++) {
    somma+=ValoriTemp.get(i);
  }
  if (somma != 0 && ValoriTemp.size() >0) {
    int media = somma / ValoriTemp.size(); //media è la somma di tutti i ValoriTemp/ il numero di ValoriTemp
    Valori.append(media); 
    ValoriTemp.clear();
  }
}


void serialEvent (Serial myPort) {
  // get the ASCII string:
  String val = myPort.readStringUntil('\n');
  // trim off any whitespace:
  if (val != null) {
    val = trim(val);
    //else val ="0";

    // convert to an int
    radius = int(val);
    ValoriTemp.append(radius);
    if (ValoriTemp.size() >= totaleValoriTemp) {
      ValoriTemp.remove(0);
    }
    println(val);
  }
  // at the edge of the screen, go back to the beginning:
}

void mouseClicked() {
  background(0);
}

void keyPressed() {
  if (key == 's') {
    saveFrame("###.png");
  }

  if (key == 'l') {
    // varia la rotazione dell'ambiente 3d attraverso il mouse
    RZ=(ValoriTemp.size()*500/420.0)*2*PI-PI;
    //RX= (mouseY/360.0)*-2*PI+PI;
    saveFrame("###.png");
    println("saved");
    background(0);
  }
  
  if (key == 'c') {
    background(0);
  }
  
}


void mouseDragged() {

  if (mouseButton==LEFT)
  {

    // varia la rotazione dell'ambiente 3d attraverso il mouse
    RY=(mouseX/420.0)*2*PI-PI;
    RX= (mouseY/360.0)*-2*PI+PI;
  }
}  // mouse dragged