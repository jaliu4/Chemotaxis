int x;
int y;
Bacteria [] colony;
void setup()   
{     
 size(500,500);
 colony = new Bacteria[1000];
 for(int i=0; i<colony.length; i++)
  {
    colony[i] = new Bacteria(250,250);
  }
}   
void draw()   
{ 
  background(0);
  for(int i=0; i<colony.length; i++)
  {
    colony[i].walk();
    colony[i].scatter();
    colony[i].show();
  }
}  
class Bacteria    
{     
 int myX, myY, bacteriaColorR, bacteriaColorG, bacteriaColorB;
 Bacteria(int x, int y)
 {
   myX = x;
   myY = y;
   bacteriaColorR = (int)(Math.random()*120)+80;
   bacteriaColorG = (int)(Math.random()*120)+80;
   bacteriaColorB = (int)(Math.random()*120)+80;
 }
 void walk()
 {
   myX = myX + (int)(Math.random()*3) - 1;
   myY = myY + (int)(Math.random()*3) - 1;
 }
 void scatter()
 {
   if(get(mouseX, mouseY) != color(0))
   {
     myX = myX + (int)(Math.random()*21) - 10;
     myY = myY + (int)(Math.random()*21) - 10;
   }
 }
 void show()
 {
   fill(bacteriaColorR, bacteriaColorG, bacteriaColorB);
   ellipse(myX,myY,30,30);
 }
} 