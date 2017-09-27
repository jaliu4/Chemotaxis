int x;
int y;
Bacteria [] colony;
void setup()   
{     
 size(500,500);
 colony = new Bacteria[10];
 for(int i=0; i<colony.length; i++)
  {
    colony[i] = new Bacteria();
  }
}   
void draw()   
{ 
  background(0);
  for(int i=0; i<colony.length; i++)
  {
    colony[i].walk();
    colony[i].yeet();
    colony[i].show();
  }
}  
class Bacteria    
{     
 int myX, myY;
 Bacteria()
 {
   myX = x = 250;
   myY = y = 250;
 }
 void walk()
 {
   myX = myX + (int)(Math.random()*3) - 1;
   myY = myY + (int)(Math.random()*3) - 1;
 }
 void yeet()
 {
   if(get(mouseX, mouseY) != color(0))
   {
     myX = myX + (int)(Math.random()*21) - 10;
     myY = myY + (int)(Math.random()*21) - 10;
   }
   else
   {
     myX = myX + (int)(Math.random()*3) - 1;
     myY = myY + (int)(Math.random()*3) - 1;
   }
 }
 void show()
 {
   fill((int)(Math.random()*120)+80,(int)(Math.random()*120)+80,(int)(Math.random()*120)+80);   
   ellipse(myX,myY,30,30);
 }
}   