

//receta - características
class Max {
    /**
     * Coordenada X
     */
    private int x;
    /**
     * Coordenada Y
     */
    private int y;
    /**
     *
     */
    private int sz;

    /**
     * Imagen de max en estado normal.
     */
    private PImage max1;
    /**
     * Imagen de max con la manito abajo.
     */
    private PImage max2;
    /**
     * Imagen de max electrocutado.
     */
    private PImage max3;

    /**
     * Constructor
     */
    public Max() {
        x = int(width/2);
        y = int(height/2);
        sz = 200;
        max1 = loadImage("max.png");
        max2 = loadImage ("max-manito-abajo.png");
        max3 = loadImage ("max-electrocutado.png");
    }

    //ejecutar función
    //primera función: display
    public void display() {

        noCursor();
        x = mouseX;
        y = mouseY;
        fill(255);
        // ellipse(x,y,sz,sz);
        //rect(x,y,sz,sz);
        //tint(100,200,255,111);

        imageMode(CENTER);

        pushMatrix();
        translate(x, y);
        if (y < height-height/4) {
            scale(1, 1);

            if (mousePressed == true) {
                image(max3, 0, 0, sz, sz);
                cortocircuito.play();
            } else {
                image(max2, 0, 0, sz, sz);
            }

        } else {
            scale(1, 1);
            image(max1, 0, 0, sz, sz);
        }

        /*
        void keyPressed(){
          if (key== 'p' || key== 'P') {

            fondo.loop();
        */
        popMatrix();
    }
}
