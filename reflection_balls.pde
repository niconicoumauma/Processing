
int width = 500, height = 500;
int[] cr, cg, cb;
int[] px, py;
int[] vx, vy;

void setup(){
  size(width, height);
  colorMode(RGB, 256);
  cr = new int[10];
  cg = new int[10];
  cb = new int[10];
  px = new int[10];
  py = new int[10];
  vx = new int[10];
  vy = new int[10];

  for(int i=0; i<10; i++){
    //color
    cr[i] = (int)random(255);
    cg[i] = (int)random(255);
    cb[i] = (int)random(255);
    
    //position
    px[i] = (int)random(width);
    py[i] = (int)random(height);
    
    //speed
    while(true){
      vx[i] = -20 + (int)random(40);
      if(vx[i] != 0) break;
    }
    while(true){
      vy[i] = -20 + (int)random(40);
      if(vy[i] != 0) break;
    }
  }
  
}

void draw(){
  background(255);
  for(int i=0; i<10; i++){
    fill(cr[i], cg[i], cb[i], 80);
    noStroke();
    ellipse(px[i], py[i], height/10, height/10);

    //color
    cr[i] += random(10);
    cg[i] += random(10);
    cb[i] += random(10);
    cr[i] = (1 <= cr[i]/256) ? cr[i]%256 : cr[i];
    cg[i] = (1 <= cg[i]/256) ? cg[i]%256 : cg[i];
    cb[i] = (1 <= cb[i]/256) ? cb[i]%256 : cb[i];
  
    //position
    px[i] += vx[i];
    py[i] += vy[i];
    if(px[i] < 0) vx[i] = -1*vx[i];
    if(py[i] < 0) vy[i] = -1*vy[i];
    if(width < px[i]) vx[i] = -1*vx[i];
    if(height < py[i]) vy[i] = -1*vy[i];
  }
}
