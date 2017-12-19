class Bullet extends Floater
{
  private int time;
  private boolean seeable;
	public Bullet(Spaceship wut)
	{
    corners = 4;
    xCorners= new int[corners];
    yCorners= new int[corners];
    xCorners[0]=3;
    yCorners[0]=3;
    xCorners[1]=3;
    yCorners[1]=-3;
    xCorners[2]=-3;
    yCorners[2]=-3;
    xCorners[3]=-3;
    yCorners[3]=3; 
    myColor= color(255);
    myPointDirection= wut.getPointDirection();
    double rads= myPointDirection*(Math.PI/180);
		myCenterX=wut.getX();
		myCenterY=wut.getY();
		myPointDirection=(int)(Math.random()*360);
		myDirectionX=5*Math.cos(rads) + wut.getDirectionX();
		myDirectionY=5*Math.sin(rads) + wut.getDirectionY();
    time=200;
    seeable=false;
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
		 time--;
    if (time==0)
    {
       seeable=true;
    }
    if (seeable==false)
    {
      super.show();
    }
	}
  public void move()
  {
    time--;
    if (time==0)
    {
       seeable=true;
    }
    if (seeable==false)
    {
      super.move();
    }
  }
}