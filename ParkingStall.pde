class ParkingStall {
  // STALL ATTRIBUTES
  boolean occupied;
  Date timeTaken;

  // DIMENSIONS AND POSITION
  float stallWidth;
  float stallHeight;
  float posX;
  float posY;

  ParkingStall(float x, float y, float w, float h) {
    occupied = false;
    posX = x;
    posY = y;
    stallWidth = w;
    stallHeight = h;
  }

  void drawStall() {
    if (occupied)
      fill(color(255, 90, 71)); // RED STALL
    else
      fill(color(152, 251, 152));  // GREEN STALL
  
    rect(posX, posY, stallWidth, stallHeight);
   
  }

  // Sets whether the stall is occupied or not
  void setStatus(boolean status, Date d)
  {
    occupied = status;
    if (occupied) {
      timeTaken = new Date(d);
    }
  }
}