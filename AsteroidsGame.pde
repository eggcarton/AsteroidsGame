Stars [] bright;
Spaceship eggBoy = new Spaceship();
Asteroid [] chaos = new Asteroid[20];
public void setup() 
{
  size(500,500);
  bright = new Stars[200];
  for (int i = 0; i < bright.length; i++)
  {
    bright[i]= new Stars();
  }
  for (int i = 0; i < chaos.length; i++)
  {
    chaos[i] = new Asteroid();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < bright.length; i++)
  {
    bright[i].show();  
  }
  for (int i = 0; i < chaos.length; i++)
  {
    chaos[i].show();
    chaos[i].move();
  }
  eggBoy.show();
  eggBoy.move();

  
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
  //if(key == 'q')eggBoy.setX(eggBoy.getX()-5);
  //if(key == 'e')eggBoy.setX(eggBoy.getX()+5);
}