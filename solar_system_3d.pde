int width = 500, height = 500;
int deg = 0;
void setup()
{
  size(width, height, P3D);
  colorMode(RGB, 256);
  noStroke();
}

void draw()
{
  background(0);
  //sun push
  pushMatrix();
  translate(width/2, height/2);
  fill(204, 0, 0);
  lights();
  sphere(height/10);
  
  pushMatrix();// earth push
    rotateY(radians(deg));
    translate(width/5, 0);
    fill(40, 96, 163);
    sphere(height/30);
  popMatrix();//earth pop
  
  //mars push
  pushMatrix();
    rotateY(radians(deg*2/3));
    translate(width/3 , 0); 
    fill(255, 0, 0);
    sphere(height/50);
      pushMatrix();//fobos push
        rotateY(radians(deg));
        translate(width/16, 0);
        fill(50);
        sphere(height/80);
      popMatrix();//fobos pop
      pushMatrix();// dimos push
        rotateY(radians((deg++)/2));
        translate(width/8, 0);
        fill(100);
        sphere(height/100);
      popMatrix();//dimos pop
  //mars pop
  popMatrix();
  
  //sun pop
  popMatrix();
}
