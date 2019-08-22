

/**
 * Enumeración que nos indica el estado del juego.
 */
enum GameStatus { Playing, Winned, Losed };

public class Scene implements DrawInterface {

    PImage pared;
    PImage mesa;
    Max max;
    MaxMano maxMano;
    GameStatus gameStatus = GameStatus.Playing;

    public Scene() {
        gameStatus = GameStatus.Playing;
        pared = loadImage("pared.jpg");
        mesa = loadImage("mesa.png");
        max = new Max();
        maxMano = new MaxMano();
    }

    @Override
    public void display() {
        validarClick();
        drawBackground();

        max.display();

        if (gameStatus == GameStatus.Playing) {
            image(mesa, width/2, 405, width/2, height/2);
            maxMano.display();
        }
        else {
            PFont title = createFont("Arial", 40, true);
            PFont subtitle = createFont("Arial", 20, true);
            String message;
            int colorBox;
            int textColor;

            if (gameStatus == GameStatus.Losed) {
                message = "Henry el pez ha muerto\nTodos estamos muy tristes :c";
                colorBox = 0xab7e191b;
                textColor = 0xffffffff;
            }
            else {
                message = "La torta está lista, Henry está feliz :)";
                colorBox = 0xabffffff;
                textColor = 0x0;
            }

            textFont(title);
            fill(colorBox);
            noStroke();
            rect(100, 100, width-200, height-200);
            fill(textColor);
            textAlign(CENTER);
            text(message, width/2, height/2);
            textFont(subtitle);
            text("Preciona \"s\" para reiniciar el juego", width/2, (height/2) + 140);
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
     * Validamos si el usuario hace click si ganó o no.
     */
    private void validarClick() {
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
