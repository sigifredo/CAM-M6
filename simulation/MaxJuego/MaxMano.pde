

class MaxMano extends ImageDraw {

    public MaxMano() {
        super("mano.png");

        setX(500);
        setY(100);
        setSize(150);
    }

    @Override
    public void display() {
        drawImage();
    }

}
