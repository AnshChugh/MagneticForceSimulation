int time; //<>//
int previous_time;
Object o; 
void setup(){
  size(640, 320);
    background(51);  
  time  = millis(); //<>//
  PVector mag = new PVector(0.0 , 0.0 ,-0.05); //<>//
  o = new Object(width/2 , 20 , 0.05 , 0.0 , mag);
}

void draw(){
  

  
   for(int i = 0; i < 100; i++){
     previous_time = time;
     time = millis(); //<>//
     int dt = time - previous_time; //<>//
     o.updateByTime(dt/10); //<>//
   }
  //o.update();
  o.display(); //<>//
}
