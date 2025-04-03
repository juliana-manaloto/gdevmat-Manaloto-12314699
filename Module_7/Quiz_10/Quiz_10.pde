Walker[] walkers = new Walker[8];
PVector wind = new PVector(0.1,0);

void setup()
{
 size(1280,720,P3D);
 camera(0,0,Window.eyeZ,0,0,0,0,-1,0);
 
 for (int i = 0; i < 8; i++) 
  {
     walkers[i] = new Walker();
     int PosX = 10 * i;
    walkers[i].position = new PVector(PosX,300);
    walkers[i].mass = 10 - i;
    walkers[i].scale = walkers[i].mass * 15;
    walkers[i].r = random(1,255);
    walkers[i].g = random(1,255);
    walkers[i].b = random(1,255);
    
     
  }
  
}
Liquid ocean = new Liquid(0,-100,Window.right,Window.bottom, 0.1f);
void draw()
{
  background(255); 
 ocean.render();
 for(Walker w : walkers)
 {
   PVector gravity = new PVector(0,-0.15 * w.mass);
    w.update();
   w.render();
   w.applyForce(wind);
   w.applyForce(gravity);
   
  if (w.position.y <= Window.bottom)
   {
     w.position.y = Window.bottom;
     w.velocity.y *= -1;
   }
  
   if(ocean.isColliding(w))
   {
     PVector dragForce = ocean.calcDragForce(w);
     w.applyForce(dragForce);
   }
   
   
 }
}
