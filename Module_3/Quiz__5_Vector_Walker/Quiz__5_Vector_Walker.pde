void setup()
{
  size(1280,720,P3D);
  camera(0,0,Window.eyeZ,0,0,0,0,-1,0);
}
PVector position = new PVector();
PVector speed = new PVector(5,8);
Walker myWalker = new Walker();
void draw()
{
  background(255);
  myWalker.randomWalk();
  myWalker.moveAndBounce();
  
  myWalker.render();
}
