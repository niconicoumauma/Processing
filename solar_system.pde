int width = 500, height = 500;
int deg = 0;
void setup()
{
  size(width, height);
  colorMode(RGB, 256);
}

void draw()
{
  background(255);
  //sun push
  pushMatrix();
  translate(width/2, height/2);
  fill(204, 0, 0);
  noStroke();
  ellipse(0, 0, height/10, height/10);
  
  //mars push
  pushMatrix();
    rotate(radians(deg));
    translate(width/3 , 0); 
    fill(255, 0, 0);
    ellipse(0, 0, height/30, height/30);
      pushMatrix();//fobos push
        rotate(radians((deg)*4));
        translate(width/16, 0);
        fill(50);
        ellipse(0, 0, height/40, height/40);
      popMatrix();//fobos pop
      pushMatrix();// dimos push
        rotate(radians((deg++)*2));
        translate(width/8, 0);
        fill(100);
        ellipse(0, 0, height/40, height/40);
      popMatrix();//dimos pop
  //mars pop
  popMatrix();
  
  //sun pop
  popMatrix();
}
