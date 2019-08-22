

class MaxMano extends ImageDraw {

    public MaxMano() {
        super("mano.png");
        setX(535);
        setY(355);
        setSize(180);
        noCursor();
    }

    @Override
    public void display() {
        generarPosicionAleatoria();
        drawImage();
    }

    /**
     * Se genera la posición aleatoria de la mano.
     * Esto se hace para agregar complejidad al juego.
     */
    private void generarPosicionAleatoria() {
        int nAleatorioX = int(random(-10, 10));
        int nAleatorioY = int(random(-10, 10));
        int newX = getX();
        int newY = getY();

        if (mouseX > 500 && mouseX < 570) {
            newX = mouseX;
        }

        if (mouseY > 330 && mouseY < 400) {
            newY = mouseY;
        }

        setX(newX + nAleatorioX);
        setY(newY + nAleatorioY);
    }
}
