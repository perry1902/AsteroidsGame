Spaceship ship= new Spaceship();
Stars [] night = new Stars[100];
boolean aIsPressed=false;
boolean dIsPressed=false;
boolean wIsPressed=false;
boolean fIsPressed=false;
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
	background(255);
	for (int i=0; i<night.length; i++)
	{
	//	night[i].show();
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
	if (fIsPressed==true)
	{//is nnow working tho check varibles
 	ship.setX(0);
	ship.setY(0);
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
  	//ship.setX(0);
	//ship.setY(0);
	//ship.accelerate((double)0.0);
	fIsPressed=true;

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

