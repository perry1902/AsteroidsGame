class Spaceship extends Floater  
{
	public Spaceship()
	{
		myColor=255;
		myPointDirection=(int)(Math.random()*360);
		myCenterX=Math.random()*650;
		myCenterY=Math.random()*600;
		corners = 4;
		xCorners= new int[corners];
		yCorners= new int[corners];
		xCorners[0]=16;
		yCorners[0]=0;
		xCorners[1]=-10;
		yCorners[1]=10;
		xCorners[2]=-6;
		yCorners[2]=0;
		xCorners[3]=-10;
		yCorners[3]=-10;

//fixz
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
		myPointDirection= degrees;
	}
    public double getPointDirection()
    {
    	return myPointDirection;
    }
}
