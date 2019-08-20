
Max max;

void setup() {
    size(1280, 720);
    max = new Max();
}

void draw() {
    fill(200);
    rect(0, 0, width, height);

    fill(150);
    rect(0, height-height/4, width, height);

    max.display();
}
