import ddf.minim.*;

Minim minim;
AudioPlayer cortocircuito;

Max serio;

void setup() {
    size(1280, 720);
    minim = new Minim(this);
    cortocircuito = minim.loadFile("groove.mp3");
    serio = new Max();
}

void draw() {
    fill(200);
    rect(0, 0, width, height);

    fill(150);
    rect(0, height-height/4, width, height);

    serio.display();
}
