class Bullet extends Floater
{
	public Bullet(Spaceship wut)
	{
		myCenterX=Math.random()*650;
		myCenterY=Math.random()*600;
		myPointDirection=(int)(Math.random()*360);
		//myDirectionX=5*Math.cos() + ship.getDirectionX;
		//myDirectionY=5*Math.sin() + ship.getDirectionY;
	}
	public void setX(int x)
	{
		myCenterX=x;
	}
	public int getX()
	{
		return (int)myCenterX;
	}
	public void setY(int y)
	{
		myCenterY=y;
	}
	public int getY()
	{
		return (int)myCenterY;
	}
	public void setDirectionX(double x)
	{
		myDirectionX=x;
	}
	public double getDirectionX()
	{
		return myDirectionX;
	}
	public void setDirectionY(double y)
	{
		myDirectionY=y;
	}
	public double getDirectionY()
	{
		return myDirectionY;
	}
	public void setPointDirection(int degrees)
	{
		myPointDirection=degrees;
	}
	public double getPointDirection()
	{
		return myPointDirection;
	}
	public void show()
	{
		ellipse(50,50,50,50);
		super.show();
	}
}
