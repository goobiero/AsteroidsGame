class Spaceship extends Floater  
{   
	double posSpeed;
	double negSpeed;
	int speed;
	public Spaceship(){
		speed = 0;
		posSpeed = 0.2;
		negSpeed = -0.2;
		corners = 4;
		xCorners = new int[]{-8,16,-8,-2};
		yCorners = new int[]{-8,0,8,0};
		myColor = 255;
		myDirectionX = 0;
		myDirectionY = 0;
		myPointDirection = 0;
		myCenterX = 400;
		myCenterY = 400;
	}


	// acssesors
	public double getmyDirectionX(){
		return myDirectionX;
	}
	public double getmyDirectionY() {
		return myDirectionY;
	}
	public double myPositionDirection() {
		return myPointDirection;
	}
	// inputs turn
	public void setMyPointDirectionPos() {
		turn(+5);
	}
	public void setMyPointDirectionNeg(){
		turn(-5);
	}
	
	// inputs speed
	public void positiveAcceleration(){
		if(speed < 10){
			accelerate(posSpeed);
		}
	}
	public void negativeAcceleration(){
		if(speed > -10){
			accelerate(negSpeed);
		}
	}
	// input stop
	public void hyperspace(){
		 myDirectionX = 0;
		 myDirectionY = 0;
	}
}






