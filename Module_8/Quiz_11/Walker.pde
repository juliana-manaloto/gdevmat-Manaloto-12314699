public class Walker
{
 public PVector position = new PVector();
 public PVector velocity = new PVector();
 public PVector acce = new PVector();
 public float velocitylimit = 10;
 public float r,g,b,scale;
 public float mass = random(1,10);
 public float gravityConstant = 1f;
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
 
 public PVector calcAttraction(Walker walker)
 {
   PVector force = PVector.sub(this.position, walker.position);
   float distance = force.mag();
   force.normalize();
   distance = constrain(distance, 5,25);
   
   float strength = (this.gravityConstant * this.mass * walker.mass) / (distance * distance);
   force.mult(strength);
   return force;
 }
}
