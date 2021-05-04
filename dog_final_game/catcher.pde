class Catcher{
  
  PImage cop;
  int copx;
  int copy;
  int start;
  int end;
  int interval;
  
   Catcher(){
    
   cop= loadImage("dog catcher0.png");
   copx=80;
   copy=400;
   start=millis();
   interval=3500;
   
  }
  
  
  void render(){
    image(cop,copx,copy,200,150);
    
    

  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
