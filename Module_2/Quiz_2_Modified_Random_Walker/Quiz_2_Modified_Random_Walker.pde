void setup()
{
  size(1020,720,P3D);
  camera(0,0,-(height/2.0)/ tan(PI*30.0/180.0),0,0,0,0,-1,0);
}
Walker myWalker = new Walker(); // creates an instance in this tab
Walker biasedWalker = new Walker();
void draw()
{
  //int rng = int(random(5)); random value 0 to5 but 5 is never used
  //println(rng);
  myWalker.randomWalk();
  myWalker.render();
  biasedWalker.randomWalkBiased();
  biasedWalker.render();
  
}
