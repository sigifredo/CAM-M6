

class Background implements DrawInterface {

    @Override
    public void display() {
        fill(200);
        rect(0, 0, width, height);
    
        fill(150);
        rect(0, height-height/4, width, height);
    }
}
