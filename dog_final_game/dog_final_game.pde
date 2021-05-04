import processing.sound.*;

Dog d1;

PImage bg;
int bgx;
int bgy;
int bgSpeed;
Catcher c1;
Trash t1;
int switchVal;
int startTime;
int interval;
int endTime;
int score;
int scoreInt;
PImage over;
PImage start;
SoundFile bark;
void keyPressed(){
  if(key=='s'){
    switchVal=1;
    if(bark.isPlaying()){
      bark.stop();
    if(key=='w'){
      bark.play();
   
    }
   
  }
}
}

void setup(){
  size(1395,598);
  d1=new Dog();
  bg = loadImage("dogcity.jpg");
  c1=new Catcher();
  bgSpeed=3;
  t1=new Trash();
  switchVal=0;
  startTime=millis();
  interval=8000;
  score=0;
  scoreInt=1000;
  over=loadImage("gameover.png");
  start= loadImage("start0.png");
  bark= new SoundFile(this,"barksound.wav");
}


 void draw(){
 switch(switchVal){
   // case 0, start screen
   case 0:
   background(bg);
   image(start, 350,325, 700, 300);
   fill(0);
   textSize(30);
   text("press s key to start", 500, 300);
  
  
   break;
   // case 1, actual gameplay
 case 1:
  setBg();
  //call dog class code
   d1.render();
   d1.jump();
   d1.topOfJump();
   d1.fall();
   d1.land();
   //call catcher class code
   
  c1.render();
  // call trash class code
  
  t1.render();
  t1.move();
  t1.faster();
  t1.touch(d1);
  endTime=millis();
  if(endTime-startTime>=interval){
    bgSpeed+=1;
    startTime=millis();
  }
  fill(0);
  textSize(30);
  text(score, 1000,50);
  if(endTime-startTime>=scoreInt){
    score+=1;
    
    
        
  }
  
  
  break;
  // case 2, end screen
  case 2:
  background(0);
  textSize(15);
  fill(255);
 
  text("FINAL SCORE:", 500, 100);
  text(score, 500, 125);
  image(over,350,300, 700, 300);
  if(switchVal==2 && keyPressed){
    if(key=='r'){
      switchVal=0;
    }
    
  }
    
  break;
  }}
 void setBg(){
   image(bg,bgx,bgy);
   image(bg,bgx+bg.width, bgy);
   bgx=bgx-bgSpeed;
   if(bgx< -bg.width){
     bgx=0;
   }
   
 
 }
 
 

 


 
