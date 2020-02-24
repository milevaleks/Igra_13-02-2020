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
  image(apolo,350,175,250,250);
  image(car,350,462);
  textSize(30);
  text("Your score :",350,320);
  text(scr,350,370);
  textSize(10);
  text("PRESS R TO RESTART",350,400);
 }
 s++;
 reset();
}
