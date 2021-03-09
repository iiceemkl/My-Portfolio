void Experiment7() {
  PImage imgF1 = loadImage("data8.png");
  PImage imgF2 = loadImage("data8.2.png");
  PImage imgB1 = loadImage("data8.3.png");
  PImage imgB2 = loadImage("data8.4.png");
  int refWidth = imgF1.width;
  int refHeight = imgF1.height;
  imgF2.resize(refWidth, refHeight);
  imgB1.resize(refWidth, refHeight);
  imgB2.resize(refWidth, refHeight);
  imgF1.loadPixels(); 
  imgF2.loadPixels();
  imgB1.loadPixels(); 
  imgB2.loadPixels();
  PImage imgAlpha = createImage(refWidth, refHeight, ALPHA);
  PImage imgSprite = createImage(refWidth, refHeight, ARGB);
  for (int i = 0; i < refWidth * refHeight; i++) {
    float Rf1 = red(imgF1.pixels[i]);
    float Gf1 = green(imgF1.pixels[i]);
    float Bf1 = blue(imgF1.pixels[i]);
    float Rf2 = red(imgF2.pixels[i]);
    float Gf2 = green(imgF2.pixels[i]);
    float Bf2 = blue(imgF2.pixels[i]);
    float Rb1 = red(imgB1.pixels[i]);
    float Gb1 = green(imgB1.pixels[i]);
    float Bb1 = blue(imgB1.pixels[i]);
    float Rb2 = red(imgB2.pixels[i]);
    float Gb2 = green(imgB2.pixels[i]);
    float Bb2 = blue(imgB2.pixels[i]);

    float a;
    float divider = pow(Rb1 - Rb2, 2) + pow(Gb1 - Gb2, 2) + pow(Bb1 - Bb2, 2);
    if (divider == 0) { 
      a = 0;
    } else {
      a = 1 - ((Rf1-Rf2)*(Rb1 - Rb2)+(Gf1-Gf2)*(Gb1 - Gb2)+(Bf1-Bf2)*(Bb1 - Bb2))/divider;
      imgAlpha.pixels[i] = color(a*255.0);
    }
    float cf_red = abs((Rf1 - (1-a)*Rb1)/a);
    float cf_green = abs((Gf1 - (1-a)*Gb1)/a);
    float cf_blue = abs((Bf1 - (1-a)*Bb1)/a);
    imgSprite.pixels[i] = color(cf_red, cf_green, cf_blue, a*255.0);
  }
  imgAlpha.updatePixels(); 
  imgAlpha.save("data7_triangulation_alpha.png");
  imgAlpha.resize(width, 0);
  imgSprite.save("data8_triangulation_sprite.png");
  imgSprite.resize(width, 0);
  image(imgAlpha, 0, 0);
}
