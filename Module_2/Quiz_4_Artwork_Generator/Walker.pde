class Walker
{
 public float x;
 public float y;
 public float scale;
 public float tx = 0, ty=10000;
 public float ts = 5;
 public float tc = 1;
 void render()
 {
   scale = map(noise(ts),0,1,5,150); 
  circle(x,y, scale);
  ts += 0.05f;
 }
 void perlinWalk()
 {
   x = map(noise(tx),0,1,-640,640);
   y= map(noise(ty),0,1,-360,360);
   
   tx += 0.01f;
   ty += 0.01f;
 }
}
