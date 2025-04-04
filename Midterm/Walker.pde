public class Walker
{
  public PVector position = new PVector();
 public PVector velocity = new PVector();
 PVector target;
  float r,g,b, size;
  float speed = 11;
  float scale = random(30);
 float gaussian = randomGaussian();
    float SD = 100;
  float mean = 0;
  float x = SD * gaussian + mean;
  float y = SD * gaussian + mean;
  public Walker()
  {
    r = random(100,255);
  g =random(100,255);
  b = random(100,255);
  }
  public void update(PVector blackhole)
  {
    position = new PVector(x,y);
    target = blackhole.copy();
    velocity = PVector.sub(target,position);
    velocity.setMag(speed);
    this.position.add(this.velocity);
  }
 public void render()
{
  
  noStroke();
  fill(r,g,b);
  circle(position.x,position.y,scale);
 
}

}
