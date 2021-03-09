// Template for assignment 2-3
//
// Student id: 6188029, 6188055, 6188077
//
// Name : 
// Naphat Khajohn-udomrith,
// Mangkhales Ngamjaruskotchakorn,
// Teekawin Kirdsaeng
//
// Section : 1
//
// Option : 1.Video processing
//
// Note : Put any note or extra explanation here if you must
//===========================================================================================================
import processing.video.*;

String video_filename = "1_C_original_MPEG4Format.avi"; 
String background_filename = "Piero.png";

Movie video;
PImage bg_img;

void setup(){
  
  size(1500,1080);
  video = new Movie(this, video_filename);
  bg_img = loadImage(background_filename);
  video.loop();
  
}

void draw() {
  loadPixels();
  bg_img.loadPixels();
  video.loadPixels();
  for (int i = 0; i < video.height; i++) {
    for (int j = 0; j < video.width; j++) {
 
      int stelle = j+(i*video.width);
      float red_video = red(video.pixels[stelle]);
      float green_video = green(video.pixels[stelle]);
      float blue_video = blue(video.pixels[stelle]);
      
      if (red_video>40 && red_video<80 && green_video>190 && blue_video>60 && blue_video<90) {
        float red_img = red(bg_img.pixels[stelle]);
        float green_img = green(bg_img.pixels[stelle]);
        float blue_img = blue(bg_img.pixels[stelle]);
        color rgb_color = color(red_img, green_img, blue_img);
        video.set(j, i, rgb_color);
      }
    }
  }
  image(video, 0, 0);
}
 
void movieEvent(Movie movies) {
  movies.read();
}
 
