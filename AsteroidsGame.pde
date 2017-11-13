Spaceship ship= new Spaceship();
Asteroids rock= new Asteroids();
Stars [] night = new Stars[150];
boolean aIsPressed=false;
boolean dIsPressed=false;
boolean wIsPressed=false;
boolean fIsPressed=false;
int randX;
int randY;
public void setup() 
{
	size(500,500);
	for (int i=0; i<night.length; i++)
	{
		night[i]=new Stars();
	}
}
public void draw()
{
	randX=(int)(Math.random()*500);
	randY=(int)(Math.random()*500);
	background(0);
	for (int i=0; i<night.length; i++)
	{
		night[i].show();
	}
	ship.show();
	ship.move();
	if (aIsPressed==true)
	{
		ship.turn(-5);
	}
	else if (dIsPressed==true)
	{
		ship.turn(5);
	}
	if (wIsPressed==true)
	{
		ship.accelerate(0.14);
	}
	rock.show();

}

public void keyPressed()
{
  if(key=='a')
  {
    aIsPressed = true;
  }
  else if (key == 'd')
  {
    dIsPressed = true;
  }
  if (key=='w')
  {
  	wIsPressed= true;
  }
   if (key=='f')
  {
  	ship.setX(randX);
	ship.setY(randY);
	ship.setDirectionX(0);
	ship.setDirectionY(0);
	ship.setPointDirection(randX);
  }
}
public void keyReleased()
{
  if(key=='a')
  {
    aIsPressed = false;
  }
  else if (key == 'd')
  {
    dIsPressed = false;
  }
  if (key=='w')
  {
  	wIsPressed=false;
  }
  if (key=='f')
  {
  	fIsPressed=false;
  }

}

