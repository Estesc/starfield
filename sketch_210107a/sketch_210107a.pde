
//didn't get around to implementing the interface or oddball
//making computer repair business 



float x;
float y;
float radius = 2;
float angle = .01;
boolean mouse = false;

Object[] o;
largeObj[] l;

void setup() {
  size(1000,700);
  o = new Object[150];
  for(int i = 0; i < o.length; i++){
    o[i] = new Object(width/2, height/2);
  }
  l = new largeObj[15];
  for(int i = 0; i < l.length; i++){
    l[i] = new largeObj(width/2, height/2);
  }
}

void draw() {
  fill(0);
  rect(0, 0, width, height);
  for(int i = 0; i < o.length; i++){
    o[i].show();
    o[i].move();
  }
  for(int i = 0; i < l.length; i++){
    l[i].show();
    l[i].move();
  }
}
void mousePressed() {
  for(int i = 0; i < o.length; i++){
    o[i] = new Object(mouseX, mouseY);
  }
  for(int i = 0; i < l.length; i++){
    l[i] = new largeObj(mouseX, mouseY);
  }
}

class Object {
  color colors = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  float radius;
  float x;
  float y;
  double angle = Math.random()*(2*Math.PI);
  float xspeed = (float)(Math.random()*10);
  float yspeed = (float)(Math.random()*10);
 
  Object(float x, float y) {
    radius = (float)(Math.random()*25);
    
    this.x = x;
    this.y = y;
  }
  
  void show() {
    fill(colors);
    ellipse(x,y,15,15);
  }
  
  void move() {
    x+=xspeed;
    y+=yspeed;
    x+=Math.cos(angle)*radius;
    y+=Math.cos(angle)*radius;
    
    angle+=.01;
  }
 
}

class largeObj {
  float radius;
  float x;
  float y;
  double angle = Math.random()*(2*Math.PI);
  float xspeed = (float)(Math.random()*5);
  float yspeed = (float)(Math.random()*5);
 
  largeObj(float x, float y) {
    radius = (float)(Math.random()*25);
    
    this.x = x;
    this.y = y;
  }
  
  void show() {
    fill(255,255,255);
    ellipse(x,y,45,45);
  }
  
  void move() {
    x+=xspeed;
    y+=yspeed;
    x+=Math.sin(angle)*radius;
    y+=Math.sin(angle)*radius;
    
    angle+=.01;
  }
 
}
