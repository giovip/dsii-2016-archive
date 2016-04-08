    int w = 16;  //larghezza
    int h = 16;  //altezza
    int index = 0;  
    void setup() {
      size(640, 384);
      background(#0000ff);
      strokeWeight(3);
      stroke(224);
      smooth();
}
    void draw() {
      int x1 = w*index;
      int x2 = x1 + w;
      int y1 = h*23;
      int y2 = h*24;
      
      if (random(2) < 1) {  //scelta opzioni
        line(x2, y1, x1, y2);  //posizione punti
      } else {
        line(x1, y1, x2, y2);  //posizione punti
}
      index++;
      if (index == width/w) {
        PImage p = get(0, h, width, h*23); //tipo di dati per memorizzare immagini
        background(#0000ff);
        set(0, 0, p);
        index = 0;
} }
