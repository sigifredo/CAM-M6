

/**
 * Enumeración que nos indica el estado del juego.
 */
enum GameStatus { Playing, Winned, Losed };

public class Scene implements DrawInterface {

    /**
     * Variable que indica el estado actual del juego.
     */
    GameStatus gameStatus;
    /**
     * Objeto que representa a Max.
     */
    Max max;
    /**
     * Objeto que representa a la mano de Max.
     */
    MaxMano maxMano;
    /**
     * Imagen de la mesa.
     */
    PImage mesa;
    /**
     * Objeto que representa la ventana modal que muestra el mensaje
     * al final de juego.
     */
    ModalWindow modalWindow;
    /**
     * Imagen de la pared.
     */
    PImage pared;

    public Scene() {
        gameStatus = GameStatus.Playing;
        max = new Max();
        maxMano = new MaxMano();
        mesa = loadImage("mesa.png");
        modalWindow = new ModalWindow();
        pared = loadImage("pared.jpg");
    }

    @Override
    public void display() {
        checkClickEvent();
        drawBackground();

        max.display();

        if (gameStatus == GameStatus.Playing) {
            image(mesa, width/2, 405, width/2, height/2);
            maxMano.display();
        }
        else {
            modalWindow.display(gameStatus);
        }
    }

    private void drawBackground() {
        pushMatrix();

        imageMode(CENTER);
        image(pared, 0, 0, width*2, height*2);

        //fondo
        /*
        noStroke();
        fill(110);
        rect(0,100,1280,500);
        */

        noStroke();
        fill(0);
        rect(0, 0, width, 100);
        rect(0, 600, width, 100);

        //luz
        stroke(90);
        fill(120);
        rect(150,100,9,300);

        stroke(90);
        fill(90);
        rect(145,400,20,30);

        //nevera
        noStroke();
        for (int i = 0; i < 100; i+=2) {
            fill(255 - i);
            rect(800, 300+i, 200, 300-i, 75, 80, 0, 0);
        }

        //puerta
        strokeWeight(2);
        fill(50);
        rect(200,100,300,500);

        stroke(30);
        strokeWeight(2);
        noFill();
        rect(220,120,260,460);

        stroke(30);
        strokeWeight(2);
        noFill();
        rect(250,150,90,200);

        stroke(30);
        strokeWeight(2);
        noFill();
        rect(360,150,90,200);

        stroke(30);
        strokeWeight(2);
        noFill();
        rect(360,365,90,200);

        stroke(30);
        strokeWeight(2);
        noFill();
        rect(250,365,90,200);

        popMatrix();
    }

    /**
     * Validamos si el usuario hace click. De ser así
     * se verifica si ganó o no.
     */
    private void checkClickEvent() {
        if (mousePressed == true) {
            if (maxMano.getX() > 530) {
                max.electrocutar();
                gameStatus = GameStatus.Losed;
            }
            else {
                gameStatus = GameStatus.Winned;
            }
        }
        else {
            if (gameStatus != GameStatus.Playing) {
                max.resetMax();
                gameStatus = GameStatus.Playing;
            }
        }
    }
}
