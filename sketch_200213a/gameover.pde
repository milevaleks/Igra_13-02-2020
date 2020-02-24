void gameover(){
  r=1;
  fill(255);
  if(scr<=59){
  image(spaceship,350,362,1000,750);
  textSize(50);
  text("Not good",350,100);
  text("Your score :",350,150);
  text(scr,350,600);
  textSize(10);
  text("PRESS R TO RESTART",350,650);
  textSize(30);
 }
  if(scr>=60){
  pushMatrix();
  translate(350,1200);
  rotate(rt);
  rt+=.01;
  image(ert,0,0);
  popMatrix();
  image(apolo2,75,175,250,250);
  image(apolo,625,175,250,250);
  image(ship,350,380);
  textSize(40);
  text("Your score :",350,175);
  text(scr,350,220);
  textSize(20);
  text("PRESS R TO RESTART",350,255);
  textSize(10);
 }
 s++;
 reset();
}
