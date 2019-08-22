

import processing.sound.SoundFile;

class AudioPlayer {
    /**
     * Reproductor de audio
     */
    SoundFile player;
    /**
     * Referencia al applet padre
     */
    PApplet parent;

    public AudioPlayer(PApplet parent) {
        this.parent = parent;
        File file = dataFile("groove.mp3");

        if (file.isFile()) {
            player = new SoundFile(this.parent, "groove.mp3");
        }
        else {
            println("El archivo de audio no existe.");
            player = null;
        }
    }

    void play() {
        if (player != null) {
            player.stop();
            player.play();
        }
    }

    void stop() {
        if (player != null) {
            player.stop();
        }
    }
}
