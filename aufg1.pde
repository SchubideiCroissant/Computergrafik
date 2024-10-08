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
      
    }
  }
}
void drawRaster(int xDim, int yDim){
  rectMode(CENTER);
  for(int x = 0; x < xDim; x++){
    for(int y = 0; y < yDim; y++){
      if(raster[x][y].value == 1) fill(255,0,0);
      else fill(255,255,255);
      
      setPixel(raster[x][y].px,raster[x][y].py);
    }
  }
}

void setPixel(int x, int y){
  rect(x, y, pixelSize,pixelSize);
}
void setup(){
  size(600,600);
  background(255);
  noStroke();
}

void draw(){
  drawRaster(xDim,yDim);
}
