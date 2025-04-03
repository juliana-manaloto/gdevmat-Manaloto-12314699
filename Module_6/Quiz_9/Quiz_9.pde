Walker[] walkers = new Walker[8];
PVector acceleration = new PVector(0.2,0);
void setup()
{
 size(1280,720,P3D);
 camera(0,0,Window.eyeZ,0,0,0,0,-1,0);
 int posY = 0;
 for (int i = 0; i < 8; i++) 
  {
     walkers[i] = new Walker();
    posY = 2 *(Window.windowHeight / 8)  * (i - (8 / 2));
    walkers[i].position = new PVector(-640,posY);
    walkers[i].mass = 10 - i;
    walkers[i].scale = walkers[i].mass * 15;
    walkers[i].r = random(1,255);
    walkers[i].g = random(1,255);
    walkers[i].b = random(1,255);
    
     
  }
  
}

void draw()
{
  background(80); 
 for(Walker w : walkers)
 {
   float mew = 0.01f;
   float n = 1;
   float frictionMag = mew * n;
   PVector friction = w.velocity.copy();
   friction.mult(-1);
   friction.normalize();
   friction.mult(frictionMag);
   w.applyForce(friction);
   
  
   w.update();
   w.render();
   w.applyForce(acceleration);
   
   if(w.position.x >= 640)
   {
    mew = 0.4f; 
   }
   if (w.position.y <= Window.bottom)
   {
     w.position.y = Window.bottom;
     w.velocity.y *= -1;
   }
   if (w.position.y >= Window.top)
   {
     w.position.y = Window.top;
     w.velocity.y *= -1;
   }
   if (w.position.x >= Window.right)
   {
     w.position.x = Window.right;
    w.velocity.x *= -1; 
   }
   if (w.position.x <= Window.left)
   {
     w.position.x = Window.left;
    w.velocity.x *= -1; 
   }
 }
}
