class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myX , myY; // positios of stars
  private int raddi, colour; //properties of stars
  public Star(){
  	myX = (int)(Math.random()*800);
  	myY = (int)(Math.random()*800);
  	colour = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  	raddi = (int)(Math.random()*6);
  }
	public void stars(){
		fill(colour);
		ellipse(myX, myY, raddi, raddi);
	}	
 }

