class Stars //note that this class does NOT extend Floater
{
  private int myX, myY, myCol;
  public Stars()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myCol = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  public void show()
  {
    noStroke();
    fill(myCol);
    ellipse(myX, myY, 5, 5);
  }
}