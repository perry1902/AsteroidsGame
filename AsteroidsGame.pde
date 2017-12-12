Spaceship ship= new Spaceship();
ArrayList <Asteroids> rock = new ArrayList <Asteroids>();
Stars [] night = new Stars[180];
//Bullet pew = new Bullet(ship);
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
	for (int r=0; r<15 ;r++)
	{
		rock.add(new Asteroids());
	}	
	

}
public void draw()
{
	background(0);
	for (int i=0; i<night.length; i++)
	{
		night[i].show();
	}
for (int i=0; i<rock.size(); i++)
	{
		rock.get(i).show();
		rock.get(i).move();
	}
	for (int i= 0; i<rock.size(); i++)
	{
		float d = dist(ship.getX(), ship.getY(), rock.get(i).getX(), rock.get(i).getY());
		if (d<20)
			rock.remove(i);
	}
	ship.show();
	ship.move();
	if (aIsPressed==true)
	{
		ship.turn(-4);
	}
	else if (dIsPressed==true)
	{
		ship.turn(4);
	}
	if (wIsPressed==true)
	{
		ship.accelerate(0.12);
	}
	//pew.show();


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

