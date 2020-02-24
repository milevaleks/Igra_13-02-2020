void gameover(){
  r=1;
  fill(255);
  if(scr<=59){
  image(car2,350,462);
  textSize(50);
  text("Not good",350,100);
  text("Your score :",350,150);
  text(scr,350,300);
  textSize(10);
  text("PRESS R TO RESTART",350,350);
  textSize(30);
  text("You failed in test. We can't give you licence",350,602);
 }
  if(scr>=60){
  pushMatrix();
  translate(350,1200);
  rotate(rt);
  rt+=.01;
  image(ert,0,0);
  popMatrix();
  image(licence,350,125);
  image(car,350,462);
  textSize(30);
  text("You got a licence !",350,270);
  text("Your score :",350,320);
  text(scr,350,370);
  textSize(10);
  text("PRESS R TO RESTART",350,400);
 }
 s++;
 reset();
}
