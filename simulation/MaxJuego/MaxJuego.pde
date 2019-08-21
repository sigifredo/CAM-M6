import processing.video.*;

Background background;
Movie myMovie;

void setup() {
    size(1280, 720);

    background = new Background();
    // myMovie = new Movie(this, "emoji-cry.webp");
    // myMovie.play();
}

void draw() {
    background(0);
    background.display();
    // image(myMovie, 0, 0);
}

void movieEvent(Movie m) {
    // m.read();
}
