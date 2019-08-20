

Background background;
Max max;

void setup() {
    size(1280, 720);

    background = new Background();
    max = new Max();
}

void draw() {
    background.display();
    max.display();
}
