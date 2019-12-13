class Asteroid extends Floater
{
	private double stoneRotetion;
	private double raddi, radian;
	Asteroid(){
		corners = (int)(Math.random()*32);
		raddi = (int)(Math.random()*16);
		radian = (Math.random()*Math.PI/(corners/4));

		stoneRotetion = Math.random()*9 - 4;
		xCorners = new int[corners];
		yCorners = new int[corners];
		myColor = color(225,225,225);
		myDirectionX = Math.random()*4 - 2;
		myDirectionY = Math.random()*4 - 2;
		myPointDirection = 0;
		myCenterX = Math.random()*400;
		myCenterY = Math.random()*400;
	}

	public void makeAsteroid(){
		for(int i = 0; i <  (int)(corners); i++){
			xCorners[i] = (int)(raddi*Math.cos(radian));
			yCorners[i] = (int)(raddi*Math.sin(radian));
			radian = radian + (Math.random()*Math.PI/(corners/4));
		}
		raddi = (int)(Math.random()*16);
	}
	public double getRaddi(){
		return raddi;
	}
	public double getMyCenterX(){
		return myCenterX;
	}
	public double getMyCenterY(){
		return myCenterY;
	}
	public int[] xCorners(){
		return xCorners;
	}
	public int[] yCorners(){
		return yCorners;
	}


	public void move(){
		turn((int)stoneRotetion);
		super.move();
	}
}