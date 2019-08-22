

class Max extends ImageDraw {

    /**
     * Constructor
     */
    public Max() {
        super("max.png");

        setX(width/2);
        setY(height/2);
        setSize(400);
    }

    @Override
    public void display() {
        drawImage();
    }

    public void electrocutar() {
        changeImagePath("max-electrocutado.png");
    }

    public void resetMax() {
        changeImagePath("max.png");
    }
}
