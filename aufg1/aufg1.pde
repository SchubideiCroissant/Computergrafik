int pixelSize = 5;
int xDim = 600, yDim = 600;

class Point{
  public int px = 0;
  public int py = 0;
  public int value = 0;
}

Point [][] raster = new Point[xDim][yDim];

void initializeRaster(){
  for(int x = 0; x < xDim; x++){
    for(int y = 0; y < yDim; y++){
      raster [x][y] = new Point();
      raster [x][y].px = x * pixelSize;
      raster [x][y].py = y * pixelSize;
      raster[x][y].value = 0;
      raster [x][y] = new Point();
    }
  
  }
  
}
void drawRaster(int x, int y){
  rect(x,y,pixelSize,pixelSize);
}


void setup(){
  size(600,600);
  background(255);
  noStroke();
}

void draw(){}
