ArrayList<Walker> walkers = new ArrayList<Walker>();
PVector wind = new PVector(0.1,0);

void setup()
{
 size(1280,720,P3D);
 camera(0,0,Window.eyeZ,0,0,0,0,-1,0);
 
 for (int i = 0; i < 10; i++) 
  {
     Walker w = new Walker();
    walkers.add(w);
     w.position = new PVector(random(-640,640),random(-360, 360));
    w.mass = random(20);
    w.scale = w.mass * 10;
    w.r = random(1,255);
    w.g = random(1,255);
    w.b = random(1,255);
    
    
  }
  
}

void draw()
{
  background(255); 
 
 for(Walker w : walkers)
 {
   
    w.update();
   w.render();
  for (int i =0; i < 10; i++)
  {
   Walker part = walkers.get(i);
     for (int j = i +1; j < 10; j++)
     {
      Walker part2 = walkers.get(j);
      if(i !=j)
      {
        part.applyForce(part2.calcAttraction(part));
        part2.applyForce(part.calcAttraction(part2));
      }
     } 
  }
  
  
   
   
 }
} 
