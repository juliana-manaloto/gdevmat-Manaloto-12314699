
ArrayList<Walker> walkers = new ArrayList<Walker>();

void setup()
{
 size(1280,720,P3D);
 camera(0,0,Window.eyeZ,0,0,0,0,-1,0);
 
 for (int i = 0; i < 100; i++) 
  {
    Walker w = new Walker();
    walkers.add(w);
     w.position = new PVector(random(-640,640),random(-360, 360));
     w.scale= random(50);
  }
 
}

void draw()
{
 background(80); 
 for(Walker w : walkers)
 {
   w.update();
   w.render();
   w.checkEdges();
 }
   
 
 
 
 
}
