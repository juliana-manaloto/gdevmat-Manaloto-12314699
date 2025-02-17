void setup()
{
  size(1020,720,P3D);
  camera(0,0,-(height/2.0)/ tan(PI*30.0/180.0),0,0,0,0,-1,0);
  background(0);
}

void draw()
{
  float gaussian = randomGaussian();
  float gaussian2 = randomGaussian();
  float SD = 100;
  float mean = 0;
  float SD2 = 80;
  float mean2 = 3;
  float x = SD * gaussian + mean;
  float y = random(-720,720);
  float scale = SD2 * gaussian2 + mean2;
  float r = random(0,255);
   float g = random(0,255);
   float b = random(0,255);
   float a = random(10,100);
  noStroke();
  fill(r,g,b,a);
  circle(x,y,scale);
}
