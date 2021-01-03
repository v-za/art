// Drop class



class Drop {
  
  float x;
  float y;
  float z;
  float ySpeed;
  float xSpeed;
  float y_len;
  float x_len;
  
  
  Drop(){
    x = random(0,width);
    y = random(-700,20);
    z = random(0,20);
    ySpeed = map(z,0,20,3,10);
    xSpeed = 2;
    y_len = map(z,0,20,6,20);
    x_len = 0;
  
  }
  
  
  
  
  void fall(){
    y = y + ySpeed;
   // ySpeed = ySpeed + 0.02;
    
    // if rain has hit the ground
    if(y>height || x > width){
      y = random(-700,20);
      x = random(-100,width);
      ySpeed = map(z,0,20,3,10);
      z = random(0,20);
      
    }
  }
  
  
// not the best way to implement this... I am aware.

  void show_line(){
    float thick = map(z, 0, 20, 1, 2); //if z is near , drop is more thicker 
    strokeWeight(thick);
    stroke(255);
    line(x,y,x+ x_len, y + y_len);
    
    
    
  }
  
  void show_blinkers(){

    stroke(255);
    float a = random(0,6); // blinking circle
    
    
    ellipse(x,y,a,a);
    
  }
  
  void wind(){
    x = x + xSpeed;
    x_len = 2.5;
      //xSpeed = map(z,0,20,3,10);
      //z = random(0,20);
    }
  }
      
   
  
  
  
