int deg;
 
void setup(){
  size(400, 400, P3D);
  noStroke();
  deg = 0;
}
 
void draw(){
  background(0);
  lights();
  deg++;
  deg = (deg==360)?0:(deg);
  translate(width/2, height/2);
  rotateX(radians(deg));
  rotateY(radians(deg));
  box(height/4, height/4, height/4);
}
