AnimatonSprite animator1;
int fps = 15; // determine speed of animator
boolean isFlipX = false;

void setup() {
  size( 512, 512 );
  background( 255, 204, 0 );
  frameRate( 24 );

  // Load the image sequence
  java.io.File folder = new java.io.File( dataPath( "alienWalk" ) );
  String[] filenames = folder.list();
  PImage[] seq = new PImage[filenames.length];
  println(filenames.length);
  for ( int i = 0; i < filenames.length; i++ ) {
    seq[i] = loadImage( dataPath( "alienWalk/" + filenames[i] ) );
  }

  animator1 = new AnimatonSprite(seq, width/2, height/2, fps);
}

void draw() {
  background(255);
  fill(0);
  // Displaying Text on the frame
  text(fps + "\n(Press +/- to change)\n" + "\nPress space to play once." +
    "\nPress 'p' to loop/stop." + "\nPress 'f' to FlipX", 20, 20);
  animator1.update(); // logic
  animator1.render(); // display or draw
}

void keyPressed() {
  if (key == '+') {
    fps++;
    animator1.setFPS(fps);
  }
  if (key == '-') {
    fps--;
    if (fps < 0) fps = 0;
    animator1.setFPS(fps);
  }

  if (key == ' ')
  {
    animator1.playOnce();
  }

  if (key == 'p')
  {
    if (animator1.isPlaying()) {
      animator1.stopPlay();
    } else {
      animator1.playLoop();
    }
  }
  if (key == 'f') {
    isFlipX = !isFlipX;
    animator1.setFlipX( isFlipX );
  }
}
