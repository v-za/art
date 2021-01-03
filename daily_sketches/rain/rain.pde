
// Poor attempt at imitating Daniel Shiffman's rain.


Drop[] drops = new Drop[600];


void setup(){
  size(700,900);
  
  for(int i =0 ; i<drops.length; i++){
    drops[i] = new Drop(); 
  }
  
}

void draw(){
  background(#190327);
  
    
  for(int i =0 ; i<drops.length; i++){
    drops[i].fall();
    drops[i].show_line();
    //drops[i].wind();
    
  }


  
}
