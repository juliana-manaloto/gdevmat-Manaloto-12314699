ArrayList<Mover> movers = new ArrayList<Mover>();
PVector blackhole = new PVector (random(-640,640), random(-360,360));
float size = 50;
int framelimit = 700;
int counter = 0;
void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  for (int i = 0; i < 100; i++) 
  {
    Mover m = new Mover();
    movers.add(m);
    m.position = new PVector(random(-640,640), random(-360,360));
     
  }
}

Mover mover = new Mover();
void draw()
{
  background(0);
  
  for(Mover m : movers)
  {
    m.update();
    m.moveToBlackHoleX();
    m.moveToBlackHoleY();
    m.render();
  }
  drawBlackHole();
  counter++;
  if(counter >= framelimit)
  {
   Reset(); 
  }
}
void Reset()
{
  blackhole = new PVector (random(-640,640), random(-360,360));
  movers.clear();
   for (int i = 0; i < 100; i++) 
  {
    Mover m = new Mover();
    movers.add(m);
    m.position = new PVector(random(-640,640), random(-360,360));
     
  }
  counter = 0;
}

void drawBlackHole()
{
  noStroke();
 fill(255);
 circle(blackhole.x,blackhole.y,size);
 
}
