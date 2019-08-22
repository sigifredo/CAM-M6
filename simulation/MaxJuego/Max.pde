

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
    // MaxMano mano;

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
        // mano = new MaxMano(this);
    }

    @Override
    public void display() {
        drawImage();
        // mano.display();
    }

    public void electrocutar() {
        changeImagePath("max-electrocutado.png");
    }

    public void resetMax() {
        changeImagePath("max.png");
    }
}
