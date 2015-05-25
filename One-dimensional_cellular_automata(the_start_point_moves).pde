int prev;
int now;
int next;
int cells[][];
int lineMax = 200;
int cellMax = 200;
int count = 0;

// -- setup --
void setup(){
size(cellMax, lineMax);
colorMode(RGB, 256);
background(255);



}

void draw(){


  background(255);
  cells = new int[lineMax][cellMax];
  for(int i=0; i<cellMax; i++){
    cells[0][i] = 0;
  }
  
  //start point
  if(cellMax <= count){
    count = 0;
  }
  cells[0][count++] = 1;  
  
  //judge
  for(int i=1; i<lineMax; i++){
    for(int j=0; j<cellMax; j++){
  
        ///////////////////////////////////
        if(j==0){
          prev = cells[i-1][cellMax-1];
          now = cells[i-1][j];
          next = cells[i-1][j+1];
        }else if(j==cellMax-1){
          prev = cells[i-1][j-1];
          now = cells[i-1][j];
          next = cells[i-1][0];
        }else{
          prev = cells[i-1][j-1];
          now = cells[i-1][j];
          next = cells[i-1][j+1];
        }
        //rule
        if(prev==0 && now==0 && next==0){
          cells[i][j] =0;
        }
        if(prev==0 && now==0 && next==1){
          cells[i][j] =1;
        }
        if(prev==0 && now==1 && next==0){
          cells[i][j] =1;
        }
        if(prev==0 && now==1 && next==1){
          cells[i][j] =1;
        }
        if(prev==1 && now==0 && next==0){
          cells[i][j] =1;
        }
        if(prev==1 && now==0 && next==1){
          cells[i][j] =0;
        }
        if(prev==1 && now==1 && next==0){
          cells[i][j] =0;
        }
        if(prev==1 && now==1 && next==1){
          cells[i][j] =0;
        }
        ///////////////////////////////////
    }
  }
  
  // -- draw --
  for(int i=0; i<lineMax; i++){
    for(int j=0; j<cellMax; j++){
      if(cells[i][j] == 1){
        point(j, i);
      }
    }
  }


}
