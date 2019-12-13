//your variable declarations here
int NUMBER_OF_SHOTS  = 0;
int NUMBER_OF_STONES = 60;

Spaceship ship = new Spaceship();
Star dots[] = new Star[800];
//Asteroid rs = new Asteroid();
ArrayList <Asteroid> stone = new ArrayList <Asteroid>();
ArrayList <Bullet> shot = new ArrayList <Bullet>();

public void setup() 
{
  //your code here
  background(0);
  size(800,800);

  for(int i = 0; i < 800; i++){
  	dots[i] = new Star();
  }

  for(int i = 0; i < NUMBER_OF_STONES; i++){
  	stone.add( new Asteroid());
  	stone.get(i).makeAsteroid();
  }
 }


public void draw() 
{
  //your code here
  background(0);
  for(int i = 0; i < 800; i++){
  	dots[i].stars();
  }

  // ship movement
  ship.show();
  ship.move();

  // numbet of bullets shot on screen
 for(int i = 0; i < shot.size(); i++){
 	shot.get(i).move();
 	shot.get(i).show();
 	if(shot.get(i).getMyCenterX() == 0 || shot.get(i).getMyCenterX() == 800
 	|| shot.get(i).getMyCenterY() == 0 || shot.get(i).getMyCenterY() == 800){
 		shot.remove(i);
 		NUMBER_OF_SHOTS--;
 	}
 }

  // Astroid movements on screen
  for(int i = 0; i < stone.size(); i++){
  	stone.get(i).move();
 	stone.get(i).show();
 	if(stone.get(i).getMyCenterX() == 0 || stone.get(i).getMyCenterX() == 800
 	|| stone.get(i).getMyCenterY() == 0 || stone.get(i).getMyCenterY() == 800){
 	   stone.get(i).makeAsteroid();
 	}
 }

 // hit detections
 if(shot.size() > 0){
 for(int i = 0; i < shot.size(); i++){
 for(int s = 0; s < stone.size(); s++){	
 			if(shot.get(i).getMyCenterX() < stone.get(s).getMyCenterX() + stone.get(s).getRaddi() && shot.get(i).getMyCenterX() > stone.get(s).getMyCenterX() - stone.get(s).getRaddi()
 			&& shot.get(i).getMyCenterY() < stone.get(s).getMyCenterY() + stone.get(s).getRaddi() && shot.get(i).getMyCenterY() > stone.get(s).getMyCenterY() - stone.get(s).getRaddi()){
 				//fill(225,0,0);
 				//ellipse((float)stone.get(s).getMyCenterX() + (float)stone.get(s).getRaddi(), (float)stone.get(s).getMyCenterY() + (float)stone.get(s).getRaddi()*0 , 10, 10);
 				stone.remove(s);
 				NUMBER_OF_STONES--;
 				shot.remove(i);
 				i--;
 				NUMBER_OF_SHOTS--;
 				if(i < 0){
 					i = 0;
 				}
 			}
 		}
	}
	}
}

public void keyPressed(){

	if( key == 'a'){
		ship.setMyPointDirectionNeg();
		for(int i = 0; i < shot.size(); i++){
			shot.get(i).setMyPointDirectionPos();
		}
	}
	if( key == 'd'){
		ship.setMyPointDirectionPos();
		for(int i = 0; i < shot.size(); i++){
			shot.get(i).setMyPointDirectionPos();
		}
	}

	if( key == 'w'){
		ship.positiveAcceleration();
	}
	if(key == 's'){
		ship.negativeAcceleration();
	}
	if(key == 'h'){
		ship.hyperspace();
	}
	if(key == 'h'){
		ship.hyperspace();
	}
	if(key == '5'){
		shot.add(new Bullet(ship));
		NUMBER_OF_SHOTS++;
	}
	
}


