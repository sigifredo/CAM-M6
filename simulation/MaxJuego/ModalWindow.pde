

class ModalWindow {

    public void display(GameStatus gameStatus) {
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
