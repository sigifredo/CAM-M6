

Scene scene;

void setup() {
    size(1280, 720);
    scene = new Scene(this);
}

void draw() {
    background(0);
    scene.display();
}

void keyPressed() {
    scene.keyPressed(key);
}

void mouseClicked() {
    scene.mouseClicked();
}
