void setup()
{
  size(1020,720,P3D);
  camera(0,0,-(height/2.0)/ tan(PI*30.0/180.0),0,0,0,0,-1,0);
  background(255);
}

float tr = 0;
float tg = 10;
float tb = 5;
Walker perlinWalker = new Walker();
void draw()
{
  //float n = noise(tr);
  //float x = map(n,0,1,0,360);
  //rect(-640 + (t*100), -360, 1, x);
  
  float r = map(noise(tr),0,1,0,255);
   float g = map(noise(tg),0,1,0,255);
   float b = map(noise(tb),0,1,0,255);
   float a = 255;
  fill(r,g,b,a);
  noStroke();
  tr += 0.06f;
  tg += 0.06f;
  tb += 0.06f;
  perlinWalker.render();
  perlinWalker.perlinWalk();
}
