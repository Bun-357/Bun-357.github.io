/**
 * Rotate. 
 * 
 * Rotating a square around the Z axis. To get the results
 * you expect, send the rotate function angle parameters that are
 * values between 0 and PI*2 (TWO_PI which is roughly 6.28). If you prefer to 
 * think about angles as degrees (0-360), you can use the radians() 
 * method to convert your values. For example: scale(radians(90))
 * is identical to the statement scale(PI/2). 
 */

float angle,angle2;
float jitter,jitter2 = 360,x;

void setup() {
  size(640, 360);
  noStroke();
  fill(255);
  rectMode(CENTER);
}

void draw() {
  background(51);
  //
  color c4 = color(250, 250, 250);  // Define color 'c'
  fill(c4);  // Use color variable 'c' as fill color
  text("angle yellow "+jitter, 10, 30);
  text("angle red "+jitter2, 10,40);
  text("error "+x*2, 10,200);
  rect(640/2, 360/2, 1, 360/1.5); //graph |-|
  rect(640/2, 360/2, 360/1.5, 1); //graph |-|
  //
   color c3 = color(0, 50, 200);  // Define color 'c'
  fill(c3);  // Use color variable 'c' as fill color
  noStroke();  // Don't draw a stroke around shapes
  rect(80, 155, 1, 360*0.25); //graph linex
  rect(125, 200, 360*0.25, 1); //graph line y
  rect(100, -(x/2)+200, 18, x); //graph |-|
  //
  // during even-numbered seconds (0, 2, 4, 6...)
  if (millis() % 2 == 0) {  
   // jitter = random(-0.1, 0.1);
   jitter ++;
   jitter2--;
   println(jitter2);
  }
  
  if( jitter>360){
     jitter = 0;
     jitter2 = 360;
  }
   x = abs(jitter2 - jitter)*0.5;
  angle = radians(jitter);
  angle2 = radians(jitter2);//
  //float c = cos(angle);
  translate(width/2, height/2);
  rotate(angle);
  //rect(0, 90, 18, 180);  
  color c = color(255, 204, 0);  // Define color 'c'
  fill(c);  // Use color variable 'c' as fill color
  noStroke();  // Don't draw a stroke around shapes
  rect(0, 0, 180, 10); 
  //line(0, 0, 18, 10);
  rotate( angle2-angle);//
  color c2 = color(200, 0, 0);  // Define color 'c'
  fill(c2);  // Use color variable 'c' as fill color
  noStroke();  // Don't draw a stroke around shapes
  rect(0, 0, 180, 10); //graph |-|
  
  //
  //rotate(radians(90));
 
}