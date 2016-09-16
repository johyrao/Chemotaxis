 //declare bacteria variables here   
 Bacteria bob = new Bacteria();
 void setup()   
 {     
 	size(500,500);
 	background(255);
 	frameRate(600);
 }   
 void draw()   
 {    
 	bob.walk();
 	bob.show();  
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
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1; 
 	}
 	void show()
 	{
 		fill(255);
 		ellipse(myX, myY, 10, 10);
 	}   
 }    