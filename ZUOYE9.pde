 int grid=200;
 float angle;
 int mX=80,mY=120;

void setup(){
 
  size(900,900,P3D);
  
  rectMode(CENTER);
  fill(200,230,200,200);
  noStroke();
}

void draw(){
  background(#0005D6);
  
  for(int x=mX+grid;x<=width-mX;x+=grid*2){
  for(int y=mY+grid;y<=width-mY;y+=grid*2){
  
  push();
  translate(x,y);
  
  //上左
   push();
  translate(-grid/2,-grid/2);
  rotateX(radians(angle));
  rotateY(-radians(angle));
  rect(0,0,grid,grid);
  pop();
  
  //上右
  push();
  translate(+grid/2,-grid/2);
  rotateX(radians(angle));
  rotateY(radians(angle));
  rect(0,0,grid,grid);
  pop();
  
  //下左
  push();
  translate(-grid/2,+grid/2);
  rotateY(radians(angle));
  rotateX(radians(angle));
  rect(0,0,grid,grid);
  pop();
  
  //下右
  push();
  translate(+grid/2,-grid/2);
  rotateX(radians(angle));
  rotateY(radians(angle));
  rect(0,0,grid,grid);
  pop();
  
  pop();
  }
 }
  
angle+=1;

if(angle>=180){
 grid=grid/2;
 if(grid<=5)grid=400;
 angle=0;
}
}
