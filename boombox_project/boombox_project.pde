import processing.sound.*;
SoundFile song;
SoundFile song2;
PImage img;



void setup() {
  size(800, 800);
  background(0, 0, 0);
  img = loadImage("radio.png");
  // declaring new song audio files
  song = new SoundFile(this, "Song1.mp3");
  song2 = new SoundFile(this, "");
  // making sure song isnt played too much in the same 60 frames
  int i = 0;
  while (true) {
    delay(1000);
    if (song.isPlaying()) {
      i++;
      println("File is still playing after " + i + " seconds");
    } else {
      break;
    }
  }
  println("Soundfile finished playing!");
}




void draw() {
  imageMode(CENTER);
  img.resize(600, 400);
  image(img, width/2, height/2);

  if (keyPressed) {
    if (key == '1') {
      song.play();
      text("Gods Plan", 500, 500);
    }
    //    if (key == '2'){     would use this if i wanted to add more than one song
    //        song2.play();    on the boombox
    //    }
    if (key == 'q') {
      song.stop();
      
    }
  }
}
