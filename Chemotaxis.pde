Bacteria [] colony;
void setup()   
{     
 size(500,500);
 colony = new Bacteria[4];
}   
void mousePressed()
{
   myX = 250;
   myY = 250;
}
void draw()   
{    
 //move and show the bacteria   
}  
class Bacteria    
{     
 int myX, myY;
 Bacteria()
 {
   myX = 250;
   myY = 250;
 }
 void walk()
 {
   myX = myX + (int)(Math.random()*3) - 1;
   myY = myY + (int)(Math.random()*3) - 1;
 }
 void yeet()
 {
   
 }
 void show()
 {
    fill((int)(Math.random()*120)+80,(int)(Math.random()*120)+80,(int)(Math.random()*120)+80);
    ellipse(myX,myY,30,30);
 }
}    