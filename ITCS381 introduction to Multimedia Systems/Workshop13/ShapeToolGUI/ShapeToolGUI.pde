ShapeSystem shapeSystem;
void setup()
{
  size(512, 512);
  frameRate(6);
  background(219);
  shapeSystem = new ShapeSystem();
  //shapeSystem.createDummyBaseShape(20);
  shapeSystem.createDummyAnyShape(20);
}
void draw()
{
  // TODO: Reset background and draw the shapes
  background(219);
  shapeSystem.render();
}

void keyPressed()
{
  if ( key == 'q' )
  { // Random new draw
    shapeSystem.removeAllShapes();
    shapeSystem.createDummyAnyShape(40);
  }
  if ( key == 'c' )
  { // clear the Scene
    shapeSystem.removeAllShapes();
  }
  if ( key == 's' )
  { // Save Output image
    save ("outputImage.png");
    shapeSystem.doSaveJSONArray("outputData");
  }
}
// TODO: Input's event mechanics
