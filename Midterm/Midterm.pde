Walker target = new Walker();
ArrayList<Walker> walkers = new ArrayList<Walker>();
PVector blackhole = new PVector();
void setup()
{
  size(1280,720,P3D);
  camera(0,0,Window.eyeZ,0,0,0,0,-1,0);
  for (int i = 0; i < 100; i++) 
  {
    Walker w = new Walker();
    walkers.add(w);
  }
  
}
public void blackHole()
{
  
  noStroke();
  fill(255,255,255);
  circle(blackhole.x,blackhole.y,50);
 
}
void draw()
{
  
 background(0);
 blackHole();
  for(Walker w : walkers)
  {
    w.update(blackhole);
   w.render();
  }

 }

 
