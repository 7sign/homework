float r=255;
float a;
float b;
float c;

void setup(){
 size(800,800);
 background(0);

//outLine1
 noStroke();
 fill(r); 
 rect (20,20,760,10);
 
//outLine2
 noStroke();
 fill(r); 
 rect (20,20,10,760);

 //outLine3
 noStroke();
 fill(r); 
 rect (770,20,10,760);

//outLine4
noStroke();
fill(r); 
rect (20,770,760,10); 

//line1
noStroke();
fill(r);
rect (195,20,10,760);

//line2
noStroke();
fill(r);
rect (20,530,760,10);

//line3
noStroke();
fill(r); 
rect (200,65,580,10);

//line4
noStroke();
fill(r); 
rect (650,20,10,50);

//line5
noStroke();
fill(r); 
rect(20,440,180,10);

//line6
noStroke();
fill(r); 
rect (430,615,340,10);

//line7
noStroke();
fill(r); 
rect (430,530,10,250);

//line8
noStroke();
fill(r); 
rect (500,530,10,90);

//line10
noStroke();
fill(r); 
rect (620,20,10,50);

//line11
noStroke();
fill(r); 
rect (665,70,10,470);
}

void draw(){
}

void mousePressed(){
 a=random(255);
 b=random(255);
 c=random(255);
  
//red1
 noStroke();
 fill(a,b-100,c-100); 
 rect (30,30,165,310);
 
 //red2
 noStroke();
 fill(a,b-100,c-100); 
 rect (440,540,60,75);
 
 //blue1
 noStroke();
 fill(b,c,c); 
 rect (30,450,165,80);
 
 //blue2
 noStroke();
 fill(c,b,b); 
 rect (630,30,20,35);

//yellow
 noStroke();
 fill(a-50,c-50,b-50); 
 rect (440,625,330,145);
 
  //white1
 noStroke();
 fill(255); 
 rect (30,540,165,230);

 //white2
 noStroke();
 fill(255); 
 rect (675,75,95,455);
}
 
 
 
 
