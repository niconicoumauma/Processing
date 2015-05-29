int width = 1000, height = 1000;
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
  pointLight(51, 102, 126, 35, 40, 360);
  axis(width/2);
  camera(width*cos((float)-deg/100), -width*abs(sin((float)deg/500)), width*sin((float)-deg/100), 0, 0, 0, 0, 1, 0);
  //sun push
  pushMatrix();
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
    translate(width/2 , 0); 
    fill(255, 0, 0);
    sphere(height/50);
      pushMatrix();//fobos push
        rotateY(radians(deg));
        translate(width/16, 0);
        fill(50);
        sphere(height/80);
      popMatrix();//fobos pop
      pushMatrix();// dimos push
        rotateY(radians(deg++/2));
        translate(width/10, 0);
        fill(100);
        sphere(height/100);
      popMatrix();//dimos pop
  //mars pop
  popMatrix();
  
  //sun pop
  popMatrix();
}

void axis(float l)
{
  
  stroke(255, 0, 0);
  line(0, 0, 0, l, 0, 0);
  stroke(0, 255, 0);
  line(0, -l, 0, 0, l, 0);
  stroke(0, 0, 255);
  line(0, 0, 0, 0, 0, l);
  noStroke();
}
