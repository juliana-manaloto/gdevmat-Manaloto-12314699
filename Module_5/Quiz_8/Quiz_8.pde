ArrayList<Walker> walkers = new ArrayList<Walker>();
PVector wind = new PVector(0.15,0);
PVector gravity = new PVector(0,-0.4);
void setup()
{
 size(1280,720,P3D);
 camera(0,0,Window.eyeZ,0,0,0,0,-1,0);
 
 for (int i = 0; i < 10; i++) 
  {
    Walker w = new Walker();
    walkers.add(w);
     
  }
  
}
void draw(){
 background(80); 
 for(Walker w : walkers)
 {
   w.update();
   w.render();
   w.applyForce(wind);
   w.applyForce(gravity);
   
   if (w.position.y <= Window.bottom)
   {
     w.velocity.y *= -1;
   }
   if (w.position.y >= Window.top)
   {
     w.velocity.y *= -1;
   }
   if (w.position.x >= Window.right)
   {
    w.velocity.x *= -1; 
   }
   if (w.position.x <= Window.left)
   {
    w.velocity.x *= -1; 
   }
 }
}
