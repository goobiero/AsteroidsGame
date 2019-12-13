class Bullet extends Floater{
	double dRadians, radian, radians;;
	int raddi;
	Bullet(Spaceship ship){
		corners = 1000;
		raddi = 4;
		radian = Math.PI*2/corners;
		radians = 0;

		xCorners = new int[corners];
		yCorners = new int[corners];
		myColor = color(0,225,225);
		myCenterX = ship.myCenterX;
		myCenterY = ship.myCenterY;
		myPointDirection = ship.myPointDirection;
		dRadians =myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians);
		myDirectionY = 5*Math.sin(dRadians);
	}

	public void move(){
		super.move();
	}
	public void show(){
		fill(0,255,0);
		ellipse((float)myCenterX,(float) myCenterY, 5, 5);
		
	}
	
	public double getMyCenterX(){
		return myCenterX;
	}
	public double getMyCenterY(){
		return myCenterY;
	}
	public void setMyPointDirectionNeg(){
		turn(-6);
	}
	public void setMyPointDirectionPos(){
		turn(+6);
	}

}
