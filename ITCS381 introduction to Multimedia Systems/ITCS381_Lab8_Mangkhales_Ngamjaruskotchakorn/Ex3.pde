void Experiment3() {
  PImage imgAlpha;
  PImage Bnew;

  String filename = "data0";
  String extension = ".png";
  String alpha_extension = "_alpha";
  String C0 = "_C0";
  String Composite = "_composite";
  imgAlpha = loadImage(filename+alpha_extension+extension);
  Bnew = loadImage("bg1.png");

  imgAlpha.loadPixels();
  Bnew.loadPixels();
  Bnew.resize(imgAlpha.width, imgAlpha.height);

  for (int i = 0; i < Bnew.width * Bnew.height; i++) {
    float CF_red = red(imgAlpha.pixels[i]);
    float CF_green = green(imgAlpha.pixels[i]);
    float CF_blue = blue(imgAlpha.pixels[i]);
    if (color(CF_red, CF_green, CF_blue) == color(0, 0, 0)) {
      imgAlpha.pixels[i] = Bnew.pixels[i];
    }
  }
  imgAlpha.updatePixels();
  Bnew.updatePixels();
  image(imgAlpha, 0, 0);
  imgAlpha.save(filename + Composite + extension);
}
