

class MaxMano extends ImageDraw {

    /**
     * Referencia al objeto padre.
     */
    private Max max;
    private boolean moverMano;

    public MaxMano(Max max) {
        super("mano.png");
        this.max = max;
        setX(535);
        setY(355);
        setSize(180);
        moverMano = true;
        noCursor();
    }

    @Override
    public void display() {
        // validarClick();
        generarPosicionAleatoria();
        drawImage();
    }

    /**
     * Se genera la posición aleatoria de la mano.
     * Esto se hace para agregar complejidad al juego.
     */
    private void generarPosicionAleatoria() {
        if (moverMano) {
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

    /**
     * Validamos si el usuario hace click si ganó o no.
     */
    /*
    private void validarClick() {
        if (mousePressed == true) {
            if (getX() > 530) {
                max.electrocutar();
                setEnableImageDraw(false);
            }
            else {
                max.batirTorta();
            }
            moverMano = false;
        }
        else {
            if (moverMano == false) {
                max.resetMax();
                moverMano = true;
            }
        }
    }
    */
}
