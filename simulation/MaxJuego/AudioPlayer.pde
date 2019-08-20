

import ddf.minim.AudioPlayer;
import ddf.minim.Minim;

class AudioPlayer {
    ddf.minim.AudioPlayer player;

    public AudioPlayer() {
        File file = dataFile("groove.mp3");

        if (file.isFile()) {
            Minim minimPlayer = new Minim(this);
            player = minimPlayer.loadFile("groove.mp3");
        }
        else {
            println("El archivo de audio no existe.");
            player = null;
        }
    }

    void play() {
        if (player != null) {
            player.play();
        }
    }
}
