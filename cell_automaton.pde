int prev;
int now;
int next;
int cells[][];
int count = 0;
int lineMax = 300;
int cellMax = 300;

// -- setup --
size(cellMax, lineMax);
colorMode(RGB, 256);

cells = new int[lineMax][cellMax];

for(int i=0; i<cellMax; i++){
  cells[0][i] = 0;
}
cells[0][cellMax/2] = 1;  

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
      point(i, j);
    }
  }
}

