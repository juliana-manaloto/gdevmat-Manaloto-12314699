class Walker
{
 PVector position = new PVector();
PVector speed = new PVector(5,8);
 
 void moveAndBounce()
 {
   position.add(speed);
  
  
  if((position.x > Window.right) || (position.x < Window.left))
  {
    speed.x *= -1;
    float r = random(255);
   float g = random(255);
   float b = random(255);
   float a = random(50,100);
   
   fill(r,g,b,a);
  }
  
  if((position.y > Window.top) || (position.y < Window.bottom))
  {
    speed.y *= -1;
    float r = random(255);
   float g = random(255);
   float b = random(255);
   float a = random(50,100);
   
   fill(r,g,b,a);
  }
 }
 void randomWalk()
{
  int rng = int(random(8));
  
  if( rng == 0)
  {
     position.y+=5;
  } 
  else if(rng == 1)
  {
     position.y-=5;
  }
  else if(rng == 2)
  {
   position.x+=5; 
  }
  else if(rng == 3)
  {
   position.x-=5; 
  }
  else if(rng==4)
  {
    position.x+=5;
      position.y+=5;
  }
  else if(rng == 5)
  {
   position.x-=5;
     position.y-=5;
  }
  else if(rng==6)
  {
    position.x+=5;
      position.y-=5;
  }
  else if(rng==7)
  {
    position.x-=5;
      position.y+=5;
  }
}
 

 void render()
 {
   float r = random(255);
   float g = random(255);
   float b = random(255);
   float a = random(50,100);
   
   fill(r,g,b,a);
  circle(position.x, position.y,50); 
 }
}
 
