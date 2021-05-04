class Trash{
  
  PImage can;
  
  int canx;
  int cany;
  int canTop;
  int canBott;
  int canLt;
  int canRt;
  int canSpeed;
  int start;
  int interval;
  int end;
  
  Trash(){
     can= loadImage("trash0.png");
     canx= width;
     cany= 450;
    canTop=cany;
  canBott= cany+ can.height;
   canLt =canx;
  canRt= canx+ can.width;
  canSpeed=3;
  start=millis();
  interval=8000;
  
  }
  
  void render(){
    image(can,canx,cany,200,170);
  
  
  
  }
  

  void move(){
  if(canx>0){
      canx=canx-canSpeed;
  }
  else{
    canx=width;
  }
  }
 
  void faster(){
    end=millis();
    if(end-start>=interval){
      canSpeed+=1;
    start=millis();
    }
  }
  
  void touch(Dog d1){
    if(canx<=d1.x  &&cany<=d1.y ){
      if(canx+can.width>=d1.x && cany+can.height>= d1.y){
      switchVal=2;
    }
  }
  }
  
  
  
}
