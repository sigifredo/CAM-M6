int HEIGHT = 414;
int WIDTH = 425;
int MM = 2;
final int STEP = 20;

void setup() {
  size(425, 414);
  surface.setResizable(true);
}
void v(float x, float y) {
  vertex(x, y);
}
void draw() {
  noFill();
  stroke(0);
  point(30, 20);
  arc(44*MM, 68*MM, 20*MM, 5*MM, PI, 2*PI);
  arc(44*MM, 68*MM, 20*MM, 8*MM, 0, PI);

  beginShape();
  v(12*MM, 70*MM);
  v(10*MM, 60*MM);
  v(12*MM, 50*MM);
  v(15*MM, 40*MM);
  v(20*MM, 30*MM);
  v(28*MM, 18*MM);
  v(40*MM, 13*MM);
  v(48*MM, 10*MM);
  v(50*MM, 9*MM);
  v(60*MM, 8*MM);
  v(70*MM, 10*MM);
  v(88*MM, 20*MM);
  v(90*MM, 22*MM);
  v(96*MM, 30*MM);
  v(100*MM, 40*MM);
  v(103*MM, 50*MM);
  v(103*MM, 50*MM);
  v(104*MM, 60*MM);
  v(104*MM, 70*MM);
  v(104*MM, 80*MM);
  v(104*MM, 90*MM);
  v(103*MM, 100*MM);
  v(102*MM, 110*MM);
  v(100*MM, 114*MM);
  v(100*MM, 114*MM);
  v(98*MM, 120*MM);
  v(93*MM, 130*MM);
  v(90*MM, 132*MM);
  v(80*MM, 140*MM);
  endShape();

  int limit = (HEIGHT > WIDTH)?HEIGHT:WIDTH;
  stroke(126);
  for (int i = 0; i < limit; i+=STEP) {
    line(0, i, WIDTH, i);
    line(i, 0, i, HEIGHT);
  }
}
