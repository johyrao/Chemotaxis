Firefly[] bob; 
void setup()   
{     
	size(500,500);
 	frameRate(40);
 	bob = new Firefly[10];
	for(int i = 0; i < bob.length; i++)
	{
		bob[i] = new Firefly();
	}
}   
void draw()   
{    
 	background(0);
 	for(int i = 0; i < bob.length; i++)
 	{
 		bob[i].walk();
 		bob[i].show();
 	}
}  
class Firefly    
{     
 	int myX, myY;
 	Firefly()
 	{
 		myX = (int)(Math.random()*500);
 		myY = (int)(Math.random()*500);
 	}
 	void walk()
 	{
 		if (mousePressed == true && myX < mouseX)
 		{
			myX = myX + (int)(Math.random()*3);
 		}
 		if (mousePressed == true && myY < mouseY)
 		{
 			myY = myY + (int)(Math.random()*3); 
 		}
 		if (mousePressed == true && myX > mouseX)
 		{
			myX = myX - (int)(Math.random()*3);
 		}
 		if (mousePressed == true && myY > mouseY)
 		{
 			myY = myY - (int)(Math.random()*3); 
 		}
 		else 
 		{
 			myX = myX + (int)(Math.random()*5)-2;
 			myY = myY + (int)(Math.random()*5)-2;  					
 		}		
 	}
 	void show()
 	{
 		noStroke();
 		fill(237,255,144);
 		ellipse(myX,myY,8,8);
 		fill(249,255,144,100);
 		ellipse(myX,myY,15,15);
 	}   
}    