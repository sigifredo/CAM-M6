

abstract class ImageDraw implements DrawInterface {
    /**
     * Coordenada X
     */
    private int x;
    /**
     * Coordenada Y
     */
    private int y;
    /**
     * Tamaño de la imagen
     */
    private int size;
    /**
     * Imagen de max en estado normal.
     */
    private PImage image;

    /**
     * Indica si la imagen se pinta o no;
     */
    private boolean enableImageDraw;

    public ImageDraw(String imagePath) {
        x = 0;
        y = 0;
        size = 100;
        enableImageDraw = true;

        changeImagePath(imagePath);
    }

    void changeImagePath(String imagePath) {
        image = loadImage(imagePath);
    }

    protected void drawImage() {
        if (enableImageDraw) {
            pushMatrix();

            imageMode(CENTER);
            translate(x, y);

            image(image, 0, 0, size, size);

            popMatrix();
        }
    }

    /* Métodos accesores */
    public int getX() {
        return x;
    }
    public int getY() {
        return y;
    }
    public int getSize() {
        return size;
    }
    public boolean getEnableImageDraw() {
        return enableImageDraw;
    }
    public void setX(int x) {
        this.x = x;
    }
    public void setY(int y) {
        this.y = y;
    }
    public void setSize(int size) {
        this.size = size;
    }
    public void setEnableImageDraw(boolean enableImageDraw) {
        this.enableImageDraw = enableImageDraw;
    }
}
