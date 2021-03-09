void Experiment1() {
  color blueOfTheBg = color(0, 0, 225);
  //background(0, 0, 126);

  // Composited foreground
  PImage imgCf;
  // Alpha of the foreground
  PImage imgAlpha;
  String filename = "data0";
  String extention = ".png";
  String alpha_extention = "_alpha";
  // filename + alpha_extention + extention = data_alpha.png

  imgCf = loadImage(filename + extention);
  imgAlpha = createImage(imgCf.width, imgCf.height, ALPHA);
  imgCf.loadPixels();
  imgAlpha.loadPixels();
  //imgCf.resize(width, 0);
  //image(imgCf, 0, 0);

  imgCf.loadPixels();
  for (int i=0; i < imgCf.width * imgCf.height; i++)
  {
    //Cf = C0 + (1-a)Bk
    //Cf_red, Cf_green, Cf_blue
    float Cf_red = red(imgCf.pixels[i]);
    float Cf_green = green(imgCf.pixels[i]);
    float Cf_blue = blue(imgCf.pixels[i]);
    // a = 1 - Bf/Bk, Bk!=0, a <- [0,1];
    float a;
    if (blue(blueOfTheBg) == 0)
    {
      a = 0; //TODO ; quick assumption
    } else {
      a = 1 - Cf_blue / blue(blueOfTheBg);
    }
    // Set alpha back to alpha image
    imgAlpha.pixels[i] = color(a * 255);
  }
  imgAlpha.updatePixels();
  // Save the file
  imgAlpha.save(filename + "_alpha" + extention);
  imgAlpha.resize(width, 0);
  image(imgAlpha, 0, 0);
}
