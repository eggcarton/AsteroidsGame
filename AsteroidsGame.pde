Spaceship eggBoy = new Spaceship();
public void setup() 
{
  size(500,500);
}
public void draw() 
{
  background(0);
  eggBoy.show();
  eggBoy.move();
}

public void keyPressed()
{
  if(key == 'w')eggBoy.accelerate(1);
  if(key == 'a')eggBoy.turn(-10);
  if(key == 's')
    {
    eggBoy.setX((int)(Math.random()*500)+8);
    eggBoy.setY((int)(Math.random()*500)+8);
    eggBoy.setPointDirection((int)(Math.random()*365));
    eggBoy.setDirectionX(0);
    eggBoy.setDirectionY(0);
  }
  if(key == 'd')eggBoy.turn(10);
}