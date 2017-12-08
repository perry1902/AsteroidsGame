class Asteroids extends Floater
{	
	private int myX,myY,rotsp;
  	private double mYX, mYY, myrad;

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
		System.out.println(myCenterX);
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
		myCenterY=y;
	}
	public int getY()
	{
		return myY;
	}
	public void setDirectionX(double x)
	{
		myDirectionX=mYX;
	}
	public double getDirectionX()
	{
		return mYX;
	}
	public void setDirectionY(double y)
	{
		myDirectionY=myY;
	}
	public double getDirectionY()
	{
		return mYY;
	}
	public void setPointDirection(int degrees)
	{
		myrad=degrees;
	}
	public double getPointDirection()
	{
		return myrad;
	}
	public void move()
	{
		turn(rotsp);
 		super.move();

	}// fix turn
}
