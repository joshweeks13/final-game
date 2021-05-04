class Dog{
  
 // variables
 
 int x;
 int y;
 PImage dogSp;
  int jumpSpeed;
  int imgH;
  int imgW;
  boolean isJumping;
  int peakY;
  boolean isFalling;
  int dogrt;
  int doglt;
  int dogTop;
  int dogBott;
  int start;
  int interval;
  int end;
  PImage[] dogrun = new PImage[4];
  // constructor
  
  
  Dog(){
    
  x=300;
  y= 500;
  dogSp= loadImage ("dog0.png");
  jumpSpeed=3;
  isJumping=false;
  peakY=350;
  isFalling=false;
  imgH=100;
  imgW=100;
  dogrt=x+imgW;
  doglt=x;
  dogTop=y;
  dogBott=y+imgH;
  start=millis();
  interval=8000;
  
   
  }
  
  
  
  
  
  
  
  void render(){
    image(dogSp,x,y,imgW,imgH);

  
  
  }
  
  
 
void jump(){
  end=millis();
   if(end-start>=interval){
     jumpSpeed+=1;
     start=millis();
   }
  if(keyPressed){
    if(key=='w'){
    isJumping=true;
    }
  }
  if(isJumping==true&& isFalling==false){
    y=y-jumpSpeed;
   
  }
   
 
}

void topOfJump(){
  if(y<=350){
    isFalling=true;
    isJumping=false;
  }
}
  void fall(){
    if(isFalling==true&& isJumping==false){
      y=y+jumpSpeed;
    }
  }
   void land(){
     if(y>=500){
       isJumping=false;
       isFalling=false;
     }
  
   }

 
  }
  
