class Object{
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector magneticField;
  float mass = 0.01;
  float charge = 0.01;
  
  Object(float x , float y , float xspeed , float yspeed, PVector MF){
    location = new PVector(x, y ,0.0);
    velocity = new PVector(xspeed , yspeed , 0.0);
    acceleration = new PVector(0,0,0);
    magneticField = MF.copy();
  }
  
  void applyMagneticForce(){
    velocity.cross(magneticField, acceleration); //<>//
  }
  
  void update(){
     
    applyMagneticForce();
    velocity.add(acceleration);
    location.add(velocity); //<>// //<>// //<>//
    acceleration.mult(0); //<>//
    //velocity.limit(7);
  }
  void updateByTime(float dt){
    applyMagneticForce(); //<>//
    acceleration.mult(dt); //<>//
    velocity.add(acceleration); //<>//
    location.add(velocity); //<>// //<>// //<>//
    acceleration.mult(0); //<>//
  }
  
  void display(){
    fill(200,0,100); //<>//
    ellipse(location.x , location.y  , 20, 20); //<>//
  }
  
}
