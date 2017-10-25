class Spaceship extends Floater  
{
	public Spaceship()
	{
		corners = 6;
		xCorners= new int[corners];
		yCorners= new int[corners];
		xCorners[0]=12;
		yCorners[0]=0;
		xCorners[1]=-8;
		yCorners[1]=8
		xCorners[2]=-6;
		yCorners[2]=-2;
		xCorners[3]=-7;
		yCorners[3]=0;
		xCorners[4]=-6;
		yCorners[4]=-2;
		xCorners[5]=-8;
		yCorners[5]=-8;
	}
	private int myX,myY,myrad;
  	private double mYX, mYY;
	public void setX(int x)
	{
		myX=x;
	}
	public int getX()
	{
		return myX;
	}
	public void setY(int y)
	{
		myY=y;
	}
	public int getY()
	{
		return myY;
	}
	public void setDirectionX(double x)
	{
		mYX=x;
	}
	public double getDirectionX()
	{
		return mYX;
	}

	public void setDirectionY(double y)
	{
		mYY=y;
	}
	public double getDirectionY()
	{
		return mYY;
	}
	public void setPointDirection(int degrees)
	{
		myrad= degrees;
	}
    public double getPointDirection()
    {
    	return myrad;
    }
}
