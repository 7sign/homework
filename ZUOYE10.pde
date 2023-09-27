void setup(){
size(480,480);
smooth();
background(250,250,250);
}

void draw(){
 if(mousePressed){
   fill(mouseX,mouseX-200,mouseX-mouseY,600-mouseX);
 ellipse(mouseX,mouseY,50,50);
 }else{
   fill(200-mouseX,mouseY-30,mouseX-50,30);
   rect(mouseX,mouseY,mouseX+20,mouseY+100);
 }
 noStroke();
}
