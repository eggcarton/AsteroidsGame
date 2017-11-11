class Asteroid extends Floater
{
  public void setX(int x){myCenterX = x;}  
  public int getX(){return (int)myCenterX;}   
  public void setY(int y){myCenterY = y;}   
  public int getY(){return (int)myCenterY;}   
  public void setDirectionX(double x){myDirectionX = x;}   
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){ myPointDirection = degrees;}
  public double getPointDirection(){return myPointDirection;}
  private int myRotSpd;
  public Asteroid()
  {
    myCenterX = (Math.random()*500)-10;
    myCenterY = (Math.random()*500)-10;
    myRotSpd = (int)(Math.random()*11)-5;
    corners = 4;
    int [] xS = {-8,-8,8,8};
    int [] yS = {-8,8,8,-8};
    xCorners = xS;
    yCorners = yS;
    myColor = color(129,0,0);
    myDirectionX = (Math.random()*3)-2;
    myDirectionY = (Math.random()*3)-2;
    myPointDirection = (Math.random()*360);
  }
  public void move()
  {
    turn(myRotSpd);
    super.move();
  }
}