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
  //if(key == 's')
  if(key == 'd')eggBoy.turn(10);
}