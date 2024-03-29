

int x = -300;
int waitTime = 10;

void setup() {
    size(425, 414);
    surface.setResizable(true);
    frameRate(10);
}

void draw() {
    background(0);
    stroke(0);
    strokeWeight(2);

    pushMatrix();
    translate(x, 100);
    /*
     * Cabeza
     */
    beginShape();
    fill(#ebd5c6);
    vertex(84.35737, 142.75862);
    bezierVertex(84.35737, 142.75862, 62.943573, 36.987465, 171.95926, 18.169281);
    bezierVertex(171.95926, 18.169281, 249.8276, 1.2982273, 267.9969, 109.665);
    bezierVertex(286.16617, 218.03177, 245.2853, 264.10345, 235.55174, 270.59247);
    bezierVertex(225.8182, 277.08148, 139.51413, 318.61127, 109.01569, 214.13791);
    bezierVertex(109.01569, 214.13791, 85.006294, 222.57365, 77.21946, 194.67084);
    bezierVertex(69.432625, 166.76802, 74.62385, 146.65202, 84.35739, 142.7586);
    bezierVertex(94.090935, 138.86519, 103.82448, 155.08775, 103.82448, 155.08775);
    endShape();

    /*
     * Oreja
     */
    beginShape();
    vertex(79.166145, 167.41693);
    bezierVertex(79.166145, 167.41693, 85.00627, 135.6207, 98.63323, 181.04388);
    bezierVertex(98.63323, 181.04388, 84.35737, 177.15047, 86.30408, 191.42633);
    bezierVertex(88.250786, 205.7022, 96.68652, 205.7022, 99.93104, 191.42633);
    endShape();

    /*
     * Ceja izquierda
     */
    beginShape();
    vertex(153.25375, 117.58704);
    bezierVertex(153.25375, 117.58704, 175.27824, 111.39266, 200.28522, 115.75167);
    bezierVertex(200.28522, 115.75167, 203.49712, 113.686874, 204.64423, 111.8515);
    endShape();

    /*
     * Ceja derecha
     */
    beginShape();
    vertex(225.52162, 116.66936);
    bezierVertex(225.52162, 116.66936, 238.13982, 112.53976, 256.49356, 115.0634);
    endShape();

    /*
     * Ojo izquierdo
     */
    beginShape();
    fill(255);
    vertex(149.40987, 134.80956);
    bezierVertex(149.40987, 134.64734, 170.17477, 125.40047, 196.45532, 133.1873);
    bezierVertex(196.45532, 133.1873, 195.6442, 149.24765, 177.15047, 151.68103);
    bezierVertex(158.65674, 154.11443, 150.38321, 138.21631, 149.40987, 134.64734);
    endShape();

    /*
     * Ojo derecho
     */
    beginShape();
    vertex(221.16261, 135.9408);
    bezierVertex(221.16261, 135.9408, 241.58115, 120.79896, 261.77026, 132.72888);
    bezierVertex(261.31143, 140.2998, 252.36397, 151.54147, 239.74576, 152.22974);
    bezierVertex(227.12756, 152.918, 221.1626, 135.9408, 221.1626, 135.9408);
    endShape();

    /*
     * Nariz
     */
    beginShape();
    fill(#ebd5c6);
    vertex(214.96822, 138.69385);
    bezierVertex(214.96822, 138.69385, 212.674, 172.8777, 223.68625, 183.66052);
    bezierVertex(223.68625, 183.66052, 223.45683, 189.85492, 217.72128, 192.83739);
    endShape();

    /*
     * Boca
     */
    line(203.43103, 218.68025, 222.00588, 217.62578);

    /*
     * Retina izquierda
     */
    ellipse(178.93495, 135.34258, 3.0, 3.0);

    /*
     * Retina derecha
     */
    ellipse(240.09406, 135.45847, 3.0, 3.0);
    popMatrix();

    if (x == 0) {
        if (waitTime == 0)
            x += 10;
        else
            waitTime--;
    }
    else {
        x += 10;
    }
}
