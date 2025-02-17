int xspacing = 1;  
int w;
float theta = 0.0;  
float amplitude = 25.0;  
float period = 100.0;  
float dx;  
float[] yvalues;
void setup()
{
  
  size(1290, 720, P3D);
  
  camera(0,0,-(height/2.0)/ tan(PI*30.0/180.0),0,0,0,0,-1,0);
  w = width-40;
  dx = (TWO_PI / period) * xspacing;
  yvalues = new float[w/xspacing];
}

void draw()
{
  
  background(0);
  drawCartesianPlane();
 drawLinearFunction();
 drawQuadraticFunction();
 calcSineWaveFunction();
 drawSineWaveFunction();
 
}
void drawCartesianPlane()
{
   strokeWeight(1);
  color white = color(255,255,255); 
  fill(white);
  stroke(white);
 
  line(300,0,-300,0);
  line(0,300,0,-300);
  
  for(int i = -300; i < 300; i +=10)
  {
    line(i,-3,i,3); 
    line(-3,i,3,i);
  }
}
void drawLinearFunction()
{
 // -5x +30

  color purple = color(138,43,226); 
  fill(purple);
  noStroke();
  
  for (int x = -200; x <= 200; x++)
  {
    circle(x,(x*-5)+30, 5);
  }
}

void drawQuadraticFunction()
{
 //x^2 - 15 x -3

  color yellow = color(255,255,0); 
  fill(yellow);
  stroke(yellow);
  for(float x = -300; x <= 300; x+= 0.1f)
  {
    
    circle(x*10, ((float)Math.pow(x,2) +(x*15) -3), 5); 
  }
  
}
  void calcSineWaveFunction()
  {
     theta += 0.02;
  float x = theta;
  for (int i = 0; i < yvalues.length; i++) {
   yvalues[i] = sin(x)*amplitude;
    x+=dx;
    //circle(i,(2*(float)Math.sin(((2*PI)/4)*(i-1)) + 0.5), 5);
  }
}
void drawSineWaveFunction()
{
 color blue = color(0,0,255); 
  fill(blue);
  stroke(blue);
  for (int x = 0; x <= 350; x++)
  {
    circle(-200 + x, (-height/30)/2+yvalues[x],10); 
  }
}
