Spaceship ship= new Spaceship();
Asteroids[] rock= new Asteroids[15];
Stars [] night = new Stars[180];
boolean aIsPressed=false;
boolean dIsPressed=false;
boolean wIsPressed=false;

public void setup() 
{
	size(700,600);
	for (int i=0; i<night.length; i++)
	{
		night[i]=new Stars();
	}
	for (int r=0; r<rock.length;r++)
	{
		rock[r]= new Asteroids();
	}
}
public void draw()
{
	background(0);
	for (int i=0; i<night.length; i++)
	{
		night[i].show();
	}
	for (int r=0; r<rock.length; r++)
	{
		rock[r].show();
		rock[r].move();

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
		ship.accelerate(0.12);
	}


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
  	ship.setX((int)(Math.random()*700));
	ship.setY((int)(Math.random()*600));
	ship.setDirectionX(0);
	ship.setDirectionY(0);
	ship.setPointDirection((int)(Math.random()*360));
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
}

