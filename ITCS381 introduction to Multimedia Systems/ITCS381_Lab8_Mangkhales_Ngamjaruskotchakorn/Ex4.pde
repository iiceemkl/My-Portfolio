void Experiment4() {
  color Redofthebg = color(255, 0, 0);
  color Greenofthebg = color(0, 255, 0);
  color Blueofthebg = color(0, 0, 255);
  PImage imgCF;
  PImage imgGrey;
  String filename = "data5";
  String extension = ".png";
  String grey_extension = "_sol3grey";
  String alpha_extension = "_alpha";
  float red;
  float green;
  float blue;
  imgCF = loadImage(filename+extension);
  imgGrey = createImage(imgCF.width, imgCF.height, ALPHA);

  imgCF.loadPixels();

  for (int i = 0; i < imgCF.width * imgCF.height; i++) {
    //Cf = C0 + (1-a)Bk
    // Cf_red,Cf_green,Cf_blue
    float CF_red = red(imgCF.pixels[i]);
    float CF_green = green(imgCF.pixels[i]);
    float CF_blue = blue(imgCF.pixels[i]);
    // a = 1 - Bf/Bk,Bk != 0, a<- [0,1]
    if (blue(Blueofthebg) == 0) {
      red = 0;
      green = 0;
      blue = 0;
    } else {
      red = 1 - CF_red / red(Redofthebg);
      green = 1 - CF_green / green(Greenofthebg);
      blue = 1 - CF_blue / blue(Blueofthebg);
    }
    // set alpha back to alpha image
    imgGrey.pixels[i] = color(red * 255, green * 255, blue * 255);
  }
  imgGrey.updatePixels();
  imgGrey.save(filename + "_alpha" + ".png");
  imgGrey.resize(width, 0);
  image(imgGrey, 0, 0);
}
