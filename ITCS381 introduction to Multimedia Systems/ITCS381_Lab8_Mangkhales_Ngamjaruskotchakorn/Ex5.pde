void Experiment5() {
  //Set RGB color
  float redcolor = 38;
  float greencolor = 88;
  float bluecolor = 175;
  color Backgroundcolor = color(redcolor, greencolor, bluecolor);

  PImage imgCF;
  PImage imgAlpha;
  PImage imgSprite;

  String filename = "data4";
  String extension = ".png";
  String alpha_extension = "_alpha";
  String sol1_extension = "_sol1";
  String sprite_extension = "_sprite";
  String red_extension = "_"+redcolor;
  String green_extension = "_"+greencolor;
  String blue_extension = "_"+bluecolor;

  imgCF = loadImage(filename + extension);
  imgAlpha = createImage(imgCF.width, imgCF.height, ALPHA);
  imgSprite = createImage(imgCF.width, imgCF.height, ARGB);

  imgCF.loadPixels();

  for (int i = 0; i < imgCF.width * imgCF.height; i++) {
    float CF_red = red(imgCF.pixels[i]);
    float CF_green = green(imgCF.pixels[i]);
    float CF_blue = blue(imgCF.pixels[i]);
    color Cfbackground = color(CF_red, CF_green, CF_blue);
    if (Cfbackground == Backgroundcolor) {
      imgAlpha.pixels[i] = color(0);
    } else {
      imgAlpha.pixels[i] = color(255);
    }
    float a = brightness(imgAlpha.pixels[i])/255.0;
    imgSprite.pixels[i] = color(CF_red, CF_green, CF_blue, a*255);
  }
  imgAlpha.updatePixels();
  imgSprite.updatePixels();

  imgAlpha.save(filename + alpha_extension + sol1_extension + red_extension + green_extension + blue_extension + extension);
  imgAlpha.resize(width, 0);
  image(imgAlpha, 0, 0);

  imgSprite.save(filename + sprite_extension + sol1_extension + extension);
  //imgSprite.resize(width, 0);
  //image(imgSprite, 0, 0);
}
