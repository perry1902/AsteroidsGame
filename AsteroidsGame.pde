Spaceship ship= new Spaceship();
ArrayList <Asteroids> rock = new ArrayList <Asteroids>();
ArrayList <Bullet> pew= new ArrayList <Bullet>();
Stars [] night = new Stars[150];
boolean aIsPressed=false;
boolean dIsPressed=false;
boolean wIsPressed=false;
public void setup() 
{
	size(700,600);
	for (int i=0; i<night.length; i++)
		night[i]=new Stars();
	for (int r=0; r<20 ;r++)
		rock.add(new Asteroids());
}
public void draw()
{
	background(0);
	for (int i=0; i<night.length; i++)
		night[i].show();
for (int i=0; i<rock.size(); i++)
	{
		rock.get(i).show();
		rock.get(i).move();
	}
for (int i = 0; i < pew.size(); i++)
  {
    pew.get(i).move();
    pew.get(i).show();
  }
	for (int i= 0; i<rock.size(); i++)
	{
		float d = dist(ship.getX(), ship.getY(), rock.get(i).getX(), rock.get(i).getY());
		if (d<17)
{
			rock.remove(i);
      i--;
}
  }
  for (int i=0; i<rock.size(); i++)
    {
      for (int j=0; j<pew.size(); j++)
      {
        float e = dist(rock.get(i).getX(), rock.get(i).getY(), pew.get(j).getX(), pew.get(j).getY());
        if (e<17)
          {
          rock.remove(i);
          pew.remove(j);
          i--;
          j--;
          break;
          }
       }
    }
   if (rock.size() <= 0)
   {
     rock.add(new Asteroids());
     rock.add(new Asteroids());
     rock.add(new Asteroids());
     rock.add(new Asteroids());
     rock.add(new Asteroids());
   }
	ship.show();
	ship.move();
	if (aIsPressed==true)
		ship.turn(-4);
	else if (dIsPressed==true)
		ship.turn(4);
	if (wIsPressed==true)
		ship.accelerate(0.12);
}

public void keyPressed()
{
  if(key=='a')
    aIsPressed = true;
  else if (key == 'd')
    dIsPressed = true;
  if (key=='w')
  	wIsPressed= true;
   if (key=='f')
  {
  	ship.setX((int)(Math.random()*700));
	ship.setY((int)(Math.random()*600));
	ship.setDirectionX(0);
	ship.setDirectionY(0);
	ship.setPointDirection((int)(Math.random()*360));
  }
  if (key==' ')
    pew.add(new Bullet(ship));
}
public void keyReleased()
{
  if(key=='a')
    aIsPressed = false;
  else if (key == 'd')
    dIsPressed = false;
  if (key=='w')
  	wIsPressed=false;
}