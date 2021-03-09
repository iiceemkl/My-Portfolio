// Please modify this class so it contain required implementation of the assignment
class ImageLib
{
  // For explanation, load into lib will keep image as original image
  // any image operation will keep result in bufferImage
  // unless called UpdateOriginalWithBufferImg(), the original will always unchanged
  PImage originalImage;
  PImage bufferImage;

  static final int ORIGINAL = 0;
  static final int BUFFER = 1;

// Note : Two funtion make to help to calculate the question A1-2
//=========================================================================================================== 
  int get(int self, int n) {
        return (self >> (n * 8)) & 0xFF;
  }
  float lerp(float s, float e, float t) {
        return s + (e - s) * t;
  }
    
  float blerp(final Float c00, float c10, float c01, float c11, float tx, float ty) {
        return lerp(lerp(c00, c10, tx), lerp(c01, c11, tx), ty);
  }
//============================================================================================================
 
  ImageLib()
  {
    // Initialization
    println("ImageLib()");
    originalImage = null;
    bufferImage = null;
  }

  ImageLib(String filename)
  {
    // Initialization with filename
    println("ImageLib(param1): param1 = " + filename);
    // Load original and buffer with the input image
    LoadOriginalImageFromFile(filename);
    UpdateBufferWithOriginalImg();
  }

  PImage GetOriginalImg()
  { // function for buffer image
    return originalImage;
  }

  PImage GetBufferImg()
  { // function for buffer image
    return bufferImage;
  }

  void UpdateOriginalWithBufferImg()
  { // function for buffer image
    println("UpdateOriginalWithBufferImg()");
    originalImage = bufferImage.get();
  }

  void UpdateBufferWithOriginalImg()
  { // function for buffer image
    println("UpdateBufferWithOriginalImg()");
    bufferImage = originalImage.get();
  }

  void LoadOriginalImageFromFile(String filename)
  {
    // Extension must be included in the file name (.jpeg, tiff, targa, .png)
    println("LoadOriginalImageFromFile(param1): param1 = " + filename);
    if (filename.length() > 0)
    {
      originalImage = loadImage(filename);
    } else { 
      println("Error: filename length() is <= 0");
    }
  }

  void SaveImageToFile(String filename, int option)
  {   
    // Extension must be included in the file name (.jpeg, tiff, targa, .png)
    println("SaveImageToFile(param1, param2), param2 (option = " + option + ")");
    switch(option)
    {
    case BUFFER: // BUFFER
      SaveBufferImageToFile(filename);
      break;

    case ORIGINAL: // ORIGINAL
    default:
      SaveOriginalImageToFile(filename);
    }
  }

  void SaveBufferImageToFile(String filename)
  {
    // Extension must be included in the file name (.jpeg, tiff, targa, .png)
    println("SaveBufferImageToFile(param1), param1 = " + filename);
    if (bufferImage != null && filename.length() > 0)
    {
      PImage newImage = createImage(bufferImage.width, bufferImage.height, RGB);
      newImage = bufferImage.get();
      newImage.save(filename);
    } else { 
      println("Error: filename length() is <= 0 or bufferImage is null");
    }
  }

  void SaveOriginalImageToFile(String filename)
  {
    // Extension must be included in the file name (.jpeg, tiff, targa, .png)
    println("SaveOriginalImageToFile(param1), param1 = " + filename);
    if (originalImage != null && filename.length() > 0)
    {
      PImage newImage = createImage(bufferImage.width, bufferImage.height, RGB);
      newImage = originalImage.get();
      newImage.save(filename);
    } else { 
      println("Error: filename length() is <= 0 or originalImage is null");
    }
  }

  void ResizeByProcessing(int newWidth, int newHeight)
  {
    // This function uses original processing operation from PImage
    // Use 0 with number of width or height to resize proportionally
    println("ResizeByProcessing(param1, param2): param1 = " + newWidth + " param2 = " + newHeight);
    if (originalImage != null)
    {
      UpdateBufferWithOriginalImg();
      bufferImage.resize(newWidth, newHeight);
    } else { 
      println("Error: originalImage is null");
    }
  }

  // A1-1 Nearest Neighbour Scaling ==================================================================
  void ResizeNearestNeighbor(int newWidth, int newHeight)
  {
    println("ResizeNearestNeighbor(param1, param2): param1 = " + newWidth + " param2 = " + newHeight);
    if (originalImage != null)
    {
      
      if (newWidth != 0 && newHeight != 0)
      {
        UpdateBufferWithOriginalImg();
        bufferImage.resize(newWidth, newHeight);
      }
      else
      {
        if(newWidth==0)
        {
          UpdateBufferWithOriginalImg();
          bufferImage.resize(newHeight, newHeight);
        }
        else
        {
          UpdateBufferWithOriginalImg();
          bufferImage.resize(newWidth, newWidth);
          
        }
      }
    }
    else 
    { 
      println("Error: originalImage is null");
    }
  }

  // A1-2 Bilinear Interpolation Scaling ==================================================================
  void ResizeBilinearInterpolation(int newWidth, int newHeight)
  {
    int Width = newWidth;
    int Height = newHeight;
    println("ResizeBilinearInterpolation(param1, param2): param1 = " + newWidth + " param2 = " + newHeight);
    if (originalImage != null)
    {
      
      if (newWidth != 0 && newHeight != 0)
      {
        UpdateBufferWithOriginalImg();
        newWidth = (int) (bufferImage.width*1.6f);
        newHeight = (int) (bufferImage.height*1.6f);
        //PImage newImage = createImage(newWidth, newHeight, RGB);
        for (int x = 0; x < newWidth; ++x) {
          for (int y = 0; y < newHeight; ++y) {
            float gx = ((float) x) / newWidth * (bufferImage.width - 1);
                float gy = ((float) y) / newHeight * (bufferImage.height - 1);
                int gxi = (int) gx;
                int gyi = (int) gy;
                int rgb = 0;
                int c00 = bufferImage.get(gxi, gyi);
                int c10 = bufferImage.get(gxi + 1, gyi);
                int c01 = bufferImage.get(gxi, gyi + 1);
                int c11 = bufferImage.get(gxi + 1, gyi + 1);
                for (int i = 0; i <= 2; ++i) {
                    float b00 = get(c00, i);
                    float b10 = get(c10, i);
                    float b01 = get(c01, i);
                    float b11 = get(c11, i);
                    int ble = ((int) blerp(b00, b10, b01, b11, gx - gxi, gy - gyi)) << (8 * i);
                    rgb = rgb | ble;
              }
              bufferImage.set(x, y, rgb);
          }
        }
        bufferImage.resize(Width, Height);
      }
      else
      {
        if(newWidth==0)
        {
          UpdateBufferWithOriginalImg();
          newWidth = (int) (bufferImage.height*1.6f);
          newHeight = (int) (bufferImage.height*1.6f);
          //PImage newImage = createImage(newWidth, newHeight, RGB);
          for (int x = 0; x < newWidth; ++x) {
            for (int y = 0; y < newHeight; ++y) {
              float gx = ((float) x) / newWidth * (bufferImage.height - 1);
              float gy = ((float) y) / newHeight * (bufferImage.height - 1);
              int gxi = (int) gx;
              int gyi = (int) gy;
              int rgb = 0;
              int c00 = bufferImage.get(gxi, gyi);
              int c10 = bufferImage.get(gxi + 1, gyi);
              int c01 = bufferImage.get(gxi, gyi + 1);
              int c11 = bufferImage.get(gxi + 1, gyi + 1);
              for (int i = 0; i <= 2; ++i) {
                float b00 = get(c00, i);
                float b10 = get(c10, i);
                float b01 = get(c01, i);
                float b11 = get(c11, i);
                int ble = ((int) blerp(b00, b10, b01, b11, gx - gxi, gy - gyi)) << (8 * i);
                rgb = rgb | ble;
              }
              bufferImage.set(x, y, rgb);
            }
          }
          bufferImage.resize(Height, Height);
          
          }
          else
          {
            UpdateBufferWithOriginalImg();
            newWidth = (int) (bufferImage.width*1.6f);
            newHeight = (int) (bufferImage.width*1.6f);
            //PImage newImage = createImage(newWidth, newHeight, RGB);
            for (int x = 0; x < newWidth; ++x) {
              for (int y = 0; y < newHeight; ++y) {
                float gx = ((float) x) / newWidth * (bufferImage.width - 1);
                float gy = ((float) y) / newHeight * (bufferImage.width - 1);
                int gxi = (int) gx;
                int gyi = (int) gy;
                int rgb = 0;
                int c00 = bufferImage.get(gxi, gyi);
                int c10 = bufferImage.get(gxi + 1, gyi);
                int c01 = bufferImage.get(gxi, gyi + 1);
                int c11 = bufferImage.get(gxi + 1, gyi + 1);
                for (int i = 0; i <= 2; ++i) {
                  float b00 = get(c00, i);
                  float b10 = get(c10, i);
                  float b01 = get(c01, i);
                  float b11 = get(c11, i);
                  int ble = ((int) blerp(b00, b10, b01, b11, gx - gxi, gy - gyi)) << (8 * i);
                  rgb = rgb | ble;
                }
                bufferImage.set(x, y, rgb);
              }
            }
            bufferImage.resize(Width, Width);
          
          }
        }
      }
      else 
      { 
        println("Error: originalImage is null");
      }
    }

  // A1-3 SeamCarving Scaling ==================================================================
  void ResizeSeamCarvingBasic(int newWidth, int newHeight)
  {
    println("ResizeSeamCarving(param1, param2): param1 = " + newWidth + " param2 = " + newHeight);
    //TODO-0: calculated how many seam need to be removed from the original image in both vertical and horizontal
    
    //TODO-1: resize on the horizontal
    // TODO-1-1: calculated 'vertical seam' to be removed
    Seam verticalseam = GetSingleVerticalSeam();
    // TODO-1-2: Remove the seam then Repeat the process for 1-1
    RemoveSingleSeam(verticalseam);
    ResizeNearestNeighbor(newWidth,newHeight);
    //TODO-2: resize on the vertical
    // TODO-2-1: calculated 'horizontal seam' to be removed
    Seam horizontalseam = GetSingleHorizontalSeam();
    // TODO-1-2: Remove the seam then Repeat the process for 1-2
    RemoveSingleSeam(horizontalseam);
    ResizeBilinearInterpolation(newWidth,newHeight);
  }

  Seam GetSingleVerticalSeam()
  {
    if (bufferImage != null)
    {
      // TODO: Calculate 1 single vertical seam

      Seam newSeam = new Seam(bufferImage.height);
      return newSeam;
    } else { 
      println("Error: bufferImage is null"); 
      return null;
    }
  }

  Seam GetSingleHorizontalSeam()
  {
    if (bufferImage != null)
    {
      // TODO: Calculate 1 single horizontal seam

      Seam newSeam = new Seam(bufferImage.width);
      return newSeam;
    } else { 
      println("Error: bufferImage is null"); 
      return null;
    }
  }

  void RemoveSingleSeam(Seam seam)
  {
    if (bufferImage != null && seam != null)
    {
      // TODO: Use seam array of marked 1D pixel location to remove data
      // from the bufferImage
      if (bufferImage.width <= 1 || bufferImage.height <= 1)
      {
        throw new IllegalArgumentException();
      }
      for (int x : seam.pixelIndices) {
            if (x < 0 || x >= seam.pixelIndices.length){
              throw new IllegalArgumentException();
            }
      }
      for (int r = 0; r < seam.pixelIndices.length; r++) {
            if (seam.pixelIndices[r] < seam.pixelIndices.length - 1) {
                System.arraycopy(bufferImage.pixels[r], seam.pixelIndices[r] + 1, bufferImage.pixels[r], seam.pixelIndices[r], seam.pixelIndices.length - seam.pixelIndices[r] - 1);
            }
        }

    } else { 
      println("Error: bufferImage or seam is null");
    }
  }

  void PaintSeam(Seam seam, color c, int option)
  {
    // Replace the originalImage or bufferImage pixel colors on the seam path with input parameter color
    // Useful to display the calculated seam to ensure its validity
    switch(option)
    {
    case BUFFER:
      if (bufferImage != null)
      {
        if (seam.pixelIndices.length > 0)
        {
          for (int i=0; i < seam.pixelIndices.length; i++)
          {
            bufferImage.loadPixels();
            bufferImage.pixels[ seam.pixelIndices[i] ] = c;
            bufferImage.updatePixels();
          }
        }
      } 
      break;

    case ORIGINAL:
    default:
      if (originalImage != null)
      {
        if (seam.pixelIndices.length > 0)
        {
          for (int i=0; i < seam.pixelIndices.length; i++)
          {
            originalImage.loadPixels();
            originalImage.pixels[ seam.pixelIndices[i] ] = c;
            originalImage.updatePixels();
          }
        }
      }
    }
  }
  
  // A1-3 SeamCarving Scaling Extra ===============
  void ResizeSeamCarvingAdvance(int newWidth, int newHeight)
  {
    println("ResizeSeamCarvingAdvance(param1, param2): param1 = " + newWidth + " param2 = " + newHeight);
    //TODO: Rather than calculating seam then remove it one-by-one
    // Can you find a way to improve its efficiency like "Make it run faster with less waste effort"
    // One suggestion is that "We can make a collection of seam to be removed from the original image"
    // Use that collection to wholesome resize the image without recalculate LS seam again and again
    // feel free to implement them here and measure the performance improvement compare to the basic one
    // summarize the improvement and its statistic in the report
  }

  // End of ImageLib Class
}
