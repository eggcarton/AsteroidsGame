Stars [] bright;
Spaceship eggBoy = new Spaceship();
Asteroid chaos = new Asteroid();
public void setup() 
{
  size(500,500);
  bright = new Stars[200];
  for (int i = 0; i < bright.length; i++)
  {
    bright[i]= new Stars();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < bright.length; i++)
  {
    bright[i].show();  
  }
  eggBoy.show();
  eggBoy.move();
  chaos.show();
  chaos.move();
  
}

public void keyPressed()
{
  if(key == 'w')eggBoy.accelerate(1);
  if(key == 'a')eggBoy.turn(-10);
  if(key == 's')
    {
    eggBoy.setX((int)(Math.random()*462)+16);
    eggBoy.setY((int)(Math.random()*462)+16);
    eggBoy.setPointDirection((int)(Math.random()*360));
    eggBoy.setDirectionX(0);
    eggBoy.setDirectionY(0);
  }
  if(key == 'd')eggBoy.turn(10);
    //if(key == 'q')eggBoy.setX(eggBoy.getX()+1);
    //if(key == 'e')eggBoy.setX(eggBoy.getX()+2);
}