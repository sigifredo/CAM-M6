

//receta - características
class Max extends ImageDraw {
    /**
     * Imagen de max con la manito abajo.
     */
    private PImage max2;
    /**
     * Imagen de max electrocutado.
     */
    private PImage max3;

    /**
     * Mano de max
     */
    MaxMano mano;

    /**
     *
     */
    AudioPlayer audioPlayer;

    /**
     * Constructor
     */
    public Max() {
        super("max.png");

        setX(width/2);
        setY(height/2);
        setSize(400);

        max2 = loadImage ("max-manito-abajo.png");
        max3 = loadImage ("max-electrocutado.png");
        audioPlayer = new AudioPlayer();
        mano = new MaxMano(this);
    }

    //ejecutar función
    //primera función: display
    @Override
    public void display() {
        drawImage();

        /*
        if (y < height-height/4) {
            scale(1, 1);

            if (mousePressed == true) {
                image(max3, 0, 0, size, size);
                audioPlayer.play();
            } else {
                image(max2, 0, 0, size, size);
            }

        } else {
            scale(1, 1);
            image(max1, 0, 0, size, size);
        }
        */

        /*
        void keyPressed(){
          if (key== 'p' || key== 'P') {

            fondo.loop();
        */
        // popMatrix();

        mano.display();
    }
}
