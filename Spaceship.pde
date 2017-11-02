class Spaceship extends Floater  
{
	private int myX,myY,myrad,myColor;
  	private double mYX, mYY;
	public Spaceship()
	{
		myColor=255;
		myPointDirection=(int)(Math.random()*360);
		myCenterX=Math.random()*400;
		myCenterY=Math.random()*400;
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

	} 
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
