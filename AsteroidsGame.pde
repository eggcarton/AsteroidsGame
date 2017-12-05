Stars [] bright = new Stars[200];
Spaceship eggBoy = new Spaceship();
ArrayList <Bullet> hell = new ArrayList <Bullet>();
ArrayList <Asteroid> chaos = new ArrayList <Asteroid>();
public void setup() 
{
  size(500,500);
  for (int i = 0; i < bright.length; i++)
  {
    bright[i]= new Stars();
  }
  for (int i = 0; i < 20; i++)
  {
    chaos.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < bright.length; i++)
  {
    bright[i].show();  
  }
  for (int i = 0; i < hell.size(); i++)
  {
    hell.get(i).show();
    hell.get(i).move();
        /*for (int k = 0; k < chaos.size(); i++)
     {
       if(dist(hell.get(i).getX(), hell.get(i).getY(),chaos.get(k).getX(), chaos.get(k).getY()) < 20)
       {
         hell.remove(i);
         chaos.remove(k); 
       break;}
      } */
 }

  for (int i = 0; i < chaos.size(); i++)
  {
    chaos.get(i).show();
    chaos.get(i).move();
    if (dist(chaos.get(i).getX(), chaos.get(i).getY(), eggBoy.getX(), eggBoy.getY()) < 16)
    chaos.remove(i);

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
  if(key == ' ')hell.add(new Bullet(eggBoy));
  if(key == 'q')eggBoy.setX(eggBoy.getX()-5);
  if(key == 'e')eggBoy.setX(eggBoy.getX()+5);
}