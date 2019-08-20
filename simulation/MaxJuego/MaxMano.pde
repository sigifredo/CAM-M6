

class MaxMano extends ImageDraw {

    /**
     * Referencia al objeto padre.
     */
    private Max max;

    public MaxMano(Max max) {
        super("mano.png");
        this.max = max;
        setSize(180);
        noCursor();
    }

    @Override
    public void display() {
        setX(mouseX);
        setY(mouseY);
        drawImage();
    }

}
