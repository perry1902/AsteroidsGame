class Asteroids extends Floater
{	
	int rotsp;
	public Asteroids()
	{
		myColor=120;
		myDirectionX=(int)(Math.random()*5)-2;
		myDirectionY=(int)(Math.random()*5)-2;
		myPointDirection=(int)(Math.random()*360);
		myCenterX= (int)(Math.random()*700);
		myCenterY= (int)(Math.random()*600);
		rotsp=(int)(Math.random()*9)-5;
		corners = 6;
		xCorners= new int[corners];
		yCorners= new int[corners];
		xCorners[0]=-11;
		yCorners[0]=-12;
		xCorners[1]=6;
		yCorners[1]=-11;
		xCorners[2]=12;
		yCorners[2]=0;
		xCorners[3]=6;
		yCorners[3]=12; 
		xCorners[4]=-11;
		yCorners[4]=8; 
		xCorners[5]=-10;
		yCorners[5]=0; 
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
	public void move()
	{
		turn(rotsp);
 		super.move();

	}
}
