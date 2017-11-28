class Bullet extends Floater
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
  public Bullet(Spaceship eggBoy)
  {
    myCenterX = eggBoy.getX();
    myCenterY = eggBoy.getY();
    myPointDirection = eggBoy.getPointDirection();
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + eggBoy.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + eggBoy.getDirectionY();
    myColor = color(255);
  }
  public void show()
  {
    fill(myColor);
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
}