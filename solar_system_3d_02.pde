int width = 1000, height = 1000;
float deg = 0;
float sunR;

//distance
float mercuryD, venusD, earthD, marsD, jupiterD, saturnD, neptunD, uranusD;
float mercuryT, venusT, earthT, marsT, jupiterT, saturnT, neptunT, uranusT;
float mercuryR, venusR, earthR, marsR, jupiterR, saturnR, neptunR, uranusR;

float distance = width;
float radius = height/60;

void setup()
{
  size(width, height, P3D);
  colorMode(RGB, 256);
  noStroke();
  mercuryD = 0.387;
  venusD = 0.723;
  earthD = 1.0;
  marsD = 1.524;
  jupiterD = 5.203;
  saturnD = 9.539;
  neptunD = 19.18;
  uranusD = 30.06;
  
  mercuryT = 0.24;
  venusT = 0.62;
  earthT = 1.0;
  marsT = 1.88;
  jupiterT = 11.86;
  saturnT = 29.53;
  neptunT = 84.25;
  uranusT = 165.20;

  mercuryR = 0.38;
  venusR = 0.95;
  earthR = 1.0;
  marsR = 0.53;
  jupiterR = 11.2;
  saturnR = 9.45;
  neptunR = 4.01;
  uranusR = 3.88;
  
}

void draw()
{
  background(0);
  deg += 1;
  //axis(distance*uranusD);
  camera(0, 0, 0, 1*cos((float)-(deg*1.7455)/100), 0, 1*sin((float)-(deg*1.7455)/100), 0, 1, 0);
  //camera(-2000, 0, 0, 0, 0, 0, 0, 1, 0);
  //sun push
  pushMatrix();
  //fill(255, 0, 0);
  sunR = height/50;
  
  pointLight(255, 255, 255, 0, 0, 0);
  pointLight(255, 255, 255, 0, 0, 0);
  pointLight(255, 255, 255, 0, 0, 0);
  pointLight(255, 255, 255, 0, 0, 0);
  //pointLight(255, 255, 255, 0, 0, 0);
  //pointLight(255, 255, 255, 0, 0, 0);
  //pointLight(255, 255, 255, 0, 0, 0);
  //pointLight(255, 255, 255, 0, 0, 0);
  //sphere(sunR);
  
  /*
  pushMatrix();// push
    rotateY(radians(deg/T));
    translate(distance*D, 0);
    fill(40, 96, 163);
    sphere(radius*R);
  popMatrix();// pop
  */
  
  pushMatrix();//mercury push
    rotateY(radians(deg/mercuryT));
    translate(distance*mercuryD, 0);
    fill(183, 196, 22);
    sphere(radius*mercuryR);
  popMatrix();// pop
  
  pushMatrix();//venus push
    rotateY(radians(deg/venusT));
    translate(distance*venusD, 0);
    fill(240, 179, 37);
    sphere(radius*venusR);
  popMatrix();// pop
  
  pushMatrix();//earth push
    rotateY(radians(deg/earthT));
    translate(distance*earthD, 0);
    fill(40, 96, 163);
    sphere(radius*earthR);
  popMatrix();// pop
  
  pushMatrix();//mars push
    rotateY(radians(deg/marsT));
    translate(distance*marsD, 0);
    fill(249, 37, 0);
    sphere(radius*marsR);
  popMatrix();// pop
  
  pushMatrix();//jupiter push
    rotateY(radians(deg/jupiterT));
    translate(distance*jupiterD, 0);
    fill(214, 140, 65);
    sphere(radius*jupiterR);
  popMatrix();// pop
  
  pushMatrix();//saturnD push
    rotateY(radians(deg/saturnT));
    translate(distance*saturnD, 0);
    fill(255, 183, 76);
    sphere(radius*saturnR);
  popMatrix();// pop
  
  pushMatrix();//neptun push
    rotateY(radians(deg/neptunT));
    translate(distance*neptunD, 0);
    fill(34, 195, 80);
    sphere(radius*neptunR);
  popMatrix();// pop
  
  pushMatrix();//uranus push
    rotateY(radians(deg/uranusT));
    translate(distance*uranusD, 0);
    fill(80, 77, 203);
    sphere(radius*uranusR);
  popMatrix();// pop
  
  //sun pop
  popMatrix();
}

void axis(float l)
{
  
  stroke(255, 0, 0);
  line(-l, 0, 0, l, 0, 0);
  stroke(0, 255, 0);
  line(0, -l, 0, 0, l, 0);
  stroke(0, 0, 255);
  line(0, 0, -l, 0, 0, l);
  noStroke();
}
