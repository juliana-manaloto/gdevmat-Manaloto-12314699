public class Walker
{
 public PVector position = new PVector(-500,200);
 public PVector velocity = new PVector();
 public PVector acce = new PVector();
 public float velocitylimit = 10;
 public float r,g,b,scale;
 public float mass = random(1,10);
 public Walker()
 {
   
 }
 public void applyForce(PVector force){
   PVector f = PVector.div(force,this.mass);
   this.acce.add(f);
 }
 public void update()
 {
   
   this.velocity.add(this.acce);
   this.velocity.limit(velocitylimit);
   this.position.add(this.velocity);
   this.acce.mult(0);
 }
 public void render()
 {
   r = random(0,255);
   g =random(0,255);
   b = random(0,255);
   scale = mass * 15;
   fill(r,g,b);
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
