

class Background implements DrawInterface {
    PImage pared;
    PImage mesa;
    Max max;
    MaxMano maxMano;

    public Background() {
        pared = loadImage("pared.jpg");
        mesa = loadImage("mesa.png");
        max = new Max();
        maxMano = new MaxMano(max);
    }

    @Override
    public void display() {

        pushMatrix();

        imageMode(CENTER);
        image(pared, 0, 0, width*2, height*2);

        //fondo
        /*
        noStroke();
        fill(110);
        rect(0,100,1280,500);
        */

        noStroke();
        fill(0);
        rect(0, 0, width, 100);
        rect(0, 600, width, 100);

        //luz
        stroke(90);
        fill(120);
        rect(150,100,9,300);

        stroke(90);
        fill(90);
        rect(145,400,20,30);

        //nevera
        noStroke();
        for (int i = 0; i < 100; i+=2) {
            fill(255 - i);
            rect(800, 300+i, 200, 300-i, 75, 80, 0, 0);
        }

        //puerta
        strokeWeight(2);
        fill(50);
        rect(200,100,300,500);

        stroke(30);
        strokeWeight(2);
        noFill();
        rect(220,120,260,460);

        stroke(30);
        strokeWeight(2);
        noFill();
        rect(250,150,90,200);

        stroke(30);
        strokeWeight(2);
        noFill();
        rect(360,150,90,200);

        stroke(30);
        strokeWeight(2);
        noFill();
        rect(360,365,90,200);

        stroke(30);
        strokeWeight(2);
        noFill();
        rect(250,365,90,200);

        max.display();

        image(mesa, width/2, 405, width/2, height/2);

        maxMano.display();

        popMatrix();
    }
}
