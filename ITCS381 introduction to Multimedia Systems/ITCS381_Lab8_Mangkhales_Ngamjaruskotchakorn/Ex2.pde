void Experiment2() {
  // Composited foeground
  PImage imgCf;

  //Alpha of the foreground
  PImage imgAlpha;

  //Uncomposited foreground
  PImage imgC0;
  String filename = "data0";
  String extention = ".png";

  String alpha_extention = "_alpha";

  imgCf = loadImage(filename + extention);
  imgAlpha = loadImage(filename + alpha_extention + extention);

  imgC0 = createImage(imgCf.width, imgCf.height, ARGB);

  imgCf.loadPixels();
  imgAlpha.loadPixels();
  imgC0.loadPixels();

  for (int i=0; i < imgCf.width * imgCf.height; i++)
  {
    float Cf_red = red(imgCf.pixels[i]);
    float Cf_green = green(imgCf.pixels[i]);
    float Cf_blue = blue(imgCf.pixels[i]);

    float a = brightness(imgAlpha.pixels[i])/255.0;
    //imgC0.pixels[i] = color(a * 255);
    color C0_color = color(
      Cf_red, 
      Cf_green, 
      Cf_blue, 
      a*255
      );

    imgC0.pixels [i] = C0_color;
  }

  imgC0.updatePixels();
  imgC0.save(filename + "_C0" + extention);
  imgC0.resize(width, 0);
  image(imgC0, 0, 0);
}

//class Alpha
//  {
//    float red;
//  float green;
//float blue;
//setAlpha(float alpha)
//{
// red = alpha*255;
//green = alpha*255;
//blue = alpha*255;
//}
//float brightness()
//{
// return (red + green + blue)/3
// }
//}
//C0 Cf * Alpha.color.brightness();
