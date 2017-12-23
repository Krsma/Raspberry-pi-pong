color c = color(0);
int y = 0;
int ballx = 320;
int bally = 180;
int balldirectionx = 1;
int balldirectiony = 1;
boolean waiting = false;

void setup()
{
  size(640,360);  
  background(255);  
  fill(c);
  rect(0,0,10,60);
  rect(630,0,10,60);
  c = color(255, 0, 0);
  fill(c);
  ellipse(320,180,25,25);

}
void draw()
{
  background(255); 
  y=y+1;
  if (y == 360)
  {
    y = 0;
  }
  move();
  moveball();
}
void move()
{
   ///fill(c);
   rect(0,y,10,60);
   rect(630,y,10,60);


}
void moveball()
{
   if((ballx+25 == 640) || (ballx-25 == 0))
   {
      balldirectionx = balldirectionx*(-1);

   }
   if((bally+25 == 360) || (bally-25 == 0))
   {
      balldirectiony = balldirectiony*(-1);

   }
   if((ballx+25 == 640) || (ballx-25 == 0) && !((bally > y) && (bally < y + 60) ))
   {
   gameover(); //<>//
   }
   else
   {
   ballx = ballx + balldirectionx;
   bally = bally + balldirectiony;
   ellipse(ballx,bally,25,25);
   }
}
void gameover()
{
background(255);
waiting = true;
while (waiting)
{

}

}
void keyPressed()
{
   if (waiting == true)
   {
      if (key == 'k')
      {
        waiting = false;
      }
   }
}