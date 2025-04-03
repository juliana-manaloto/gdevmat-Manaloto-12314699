public class Walker
{
 public PVector position = new PVector();
 public PVector velocity = new PVector();
 public PVector acce = new PVector();
 public float velocitylimit = 10;
 public float scale;
 
 public Walker()
 {
   
 }
 public void update()
 {
   this.acce = new PVector(mouseX,mouseY);
   this.acce.normalize().mult(0.2);
   this.velocity.add(this.acce);
   this.velocity.limit(velocitylimit);
   this.position.add(this.velocity);
 }
 public void render()
 {
   circle(position.x, position.y, scale);
 }
 
 public void checkEdges()
 {
  if (this.position.x > Window.right)
  {
   this.position.x = Window.left; 
  } 
  else if(this.position.x < Window.left)
  {
   this.position.x = Window.right; 
  } 
  if (this.position.y > Window.top)
  {
   this.position.y = Window.bottom; 
  } 
  else if(this.position.y < Window.bottom)
  {
   this.position.y = Window.top; 
  } 
 }
}
