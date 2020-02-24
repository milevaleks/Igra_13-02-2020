PImage you,others,ert,car,car2,licence,nightsky;
float rt;
PFont myFont;

int r=0;

int s=0;

int p=0;

int []dvy={-50,100,250,400,550,700,900};

int dvp=2;

int x=350,y=800;
int rx1(){
 return int(random(175,315));
}
int rx2(){
 return int(random(385,525));
}
int ry(){
 return int(random(-60,-59));
}
int rs(){
  return int(random(2));
}
int[]cx={rx1(),rx1(),rx2(),rx2()};
int[]cx1={rx1(),rx1(),rx2(),rx2()};
float[]cy={-59,-200,-350,-600};
float[]cyr={-59,-200,-350,-600};

int scr;

int k=0;

int roadside =rs();

float m=5;

float d=m;

float n=0.001;

int count = 0;
int pos=0;

void setup(){
size(700,700);
myFont = createFont("Impact", 32);
  textFont(myFont);
  textAlign(CENTER, CENTER);
  nightsky=loadImage("Beehive.jpg");
  you=loadImage("korab1.png");
  ert=loadImage("earth.png");
  car=loadImage("car.png");
  car2=loadImage("car2.png");
  licence=loadImage("lic.png");
  others=loadImage("korab2.png");

  for(int i=0;i<=3;i++){
  cy[i]=ry();
  cx[i]=p;
  }
  
}
void draw(){
  
 
  
    background(#0C0D1F);
   
  image(nightsky,0,0);
  if(k==1){
    d=0;
    n=0;
    dvp=0;
  }
  if(k==0){
    d=m;
    n=.001;
    dvp=2;
  }
  imageMode(CENTER); 
  if(r==0){
  fill(255);
   textSize(50);
  text("PRESS R TO START",width/2,height/2);
  }
  if(r==1){
    gameover();
  }
  if(r==2){
  imageMode(CENTER);
  image(nightsky, 700, 700);
  for(int i=0;i<=6;i++){
     noStroke();   
     
  }
  for(int i=0;i<=6;i++){
     dvy[i]+=dvp;
     if(dvy[i]>=950){
       dvy[i]=-50;
     }
  }
  image(you,x,y - 150,100,100);
  for(int i=0;i<=3;i++){
  image(others,cx[i],cy[i],110,110);
  }
  fill(255);
   textSize(50);
  text(scr,70,200);
  m+=n;
  for(int i=0;i<=3;i++){
  cy[i]+=d;
  }
  for(int i=0;i<=3;i++){
  if(cy[i]>=959){
    scr+=5;
  cy[i]=ry();
  roadside=rs();
  if(roadside==0){
  cx[i]=rx1();
  }
  if(roadside==1){
  cx[i]=rx2();
  }
  }
  }
  if(x>=521){
  x=521;
  }
  else if(x<=179){
  x=179;
  }
  if(y>=840){
  y=840;
  }
  else if(y<=60){
  y=60;
  }
  for(int i=0;i<=3;i++){
    if(cy[i]>=(y-117) && cy[i]<=(y+117) && cx[i]>=(x-46) && cx[i]<=(x+46)){
    gameover();
    }
}

  }
}

void keyPressed(){

  if(keyCode == 32){
     k=1;
  }

  if(s==0){ 
  }  
if(keyCode==RIGHT || keyCode=='d' || keyCode=='D'){
x=x+4;
x+=d;
}
else if(keyCode==LEFT || keyCode=='a' || keyCode=='A'){
x=x-4;  
x-=d;
}
else if(keyCode==UP || keyCode=='w' || keyCode=='W'){
y=y-4;
y-=d;
}
else if(keyCode==DOWN || keyCode=='s' || keyCode=='S'){
y=y+4;
y+=d;
}
if(key=='r' || keyCode=='R'){
r=2;
scr=0;
reset();
m=5;d=m;
s=0;
}
}
