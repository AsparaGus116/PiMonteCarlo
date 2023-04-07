double hits = 0;
int tries = 0;
double pi = 0.0;
void setup()
{
  size(400,600);
  surface.setTitle("PiMonteCarlo");
  background(55,55,55);
  fill(0,255,0);
  circle(200, 200, 400);
  fill(55,55,55);
  circle(200, 200, 396);
  frameRate(60);
}

void draw()
{
  
  
  for(int i = 0; i < 100000; i++)
  {
     double x = random(4);
     double y = random(4);
     if(sqrt(pow((float)x,2.0)+pow((float)y,2.0)) < 4)
     {
       hits++;
     }
     fill(255,0,0);
     stroke(255,0,0);
     circle((int)(x* 100),(int)(y*100),1);
     tries++;
     
  }
  pi = hits / tries * 4;
  fill(55,55,55);
  stroke(55,55,55);
  rect(0, 401, 400, 600);
  textSize(64);
  fill(0,255,255);
  stroke(0,255,255);
  text(nf((float)pi,1,10), 025,500);
}
