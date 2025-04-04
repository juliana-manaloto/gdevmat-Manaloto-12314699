public class Mover
{
   public PVector position = new PVector (random(-640,640), random(-360,360));
   public PVector velocity = new PVector(); 
   public PVector target;
   PVector direction;
   public float scale = random(5,40);
   float r = random(0,255);
   float g = random(0,255);
   float b = random(0,255); 
   float a = 255;
   float gaussian = randomGaussian();
   float SD = 200;
  float mean = 0;
   public void update()
 {
   this.velocity.mult(15);
   this.position.add(this.velocity);
 }
   Mover()
   {
      position = new PVector(); 
      velocity = new PVector();
     
   }
   
   Mover(float x, float y)
   {
      x = SD * gaussian + mean;
     y = SD * gaussian + mean;
      position = new PVector(x, y);
   }
   

   
   public void render()
   {
      fill(r,g,b,a);
      circle(position.x, position.y, scale); 
   }
   
   public void moveToBlackHoleX()
   {
      target = blackhole.copy();
      
      
      if (position.x < target.x)
      {
         position.x ++; 
         
      }
      else if (position.x > target.x)
      {
         position.x --; 
      }
      
   }
   public void moveToBlackHoleY()
   {
      target = blackhole.copy();
   
       if (position.y < target.y)
      {
         position.y ++; 
      }
      else if (position.y > target.y)
      {
         position.y --; 
      }
   }
   
   
}
