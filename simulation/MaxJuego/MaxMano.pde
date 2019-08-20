

class MaxMano extends ImageDraw {

    public MaxMano() {
        super("mano.png");
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
