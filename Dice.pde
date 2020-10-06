int total = 0;
void setup()
{
  size(540,500);
  textAlign(CENTER,CENTER);
	noLoop();
}
void draw()
{
  background(0);
 for ( int e = 5; e < 450; e = e + 60){
  for (int i = 5; i < 500; i = i + 60)
  {
	  Die sue = new Die (i,e);
    sue.show();
  }
 }
  fill(250, 183, 75);
  text("The total is: " + total,270,485);
}
void mousePressed()
{
	redraw();
  total = 0;
}
class Die //models one single dice cube
{
	int myX, myY;
  int faceNumber;
	
	Die(int x, int y) //constructor
	{
    faceNumber = 0;
    roll();
    myX = x;
    myY = y;
	}
	void roll()
	{
		faceNumber = (int)(Math.random()*6 + 1);
	}
	void show()
	{
    noStroke();
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    rect(myX,myY,50,50,10);
    if (faceNumber == 1){
      fill(0);
      ellipse( myX + 25 ,myY + 25, 10,10);
      total = total + 1;
    }
    else if (faceNumber == 2){
      fill(0);
      ellipse( myX + 40, myY + 10, 10,10);
      ellipse( myX + 10, myY + 40, 10,10);
      total = total + 2;
    }
    else if (faceNumber == 3){
      fill(0);
      ellipse( myX + 25 ,myY + 25, 10,10);
      ellipse( myX + 40, myY + 10, 10,10);
      ellipse( myX + 10, myY + 40, 10,10);
      total = total + 3;
    }
    else if (faceNumber == 4)
    {
    fill(0);
    ellipse( myX + 40, myY + 10, 10,10);
    ellipse( myX + 10, myY + 40, 10,10);
    ellipse( myX + 10, myY + 10, 10,10);
    ellipse( myX + 40, myY + 40, 10,10);
    total = total + 4;
    }
    else if (faceNumber == 5)
    {
    fill(0);
    ellipse( myX + 25 ,myY + 25, 10,10);
    ellipse( myX + 40, myY + 10, 10,10);
    ellipse( myX + 10, myY + 40, 10,10);
    ellipse( myX + 10, myY + 10, 10,10);
    ellipse( myX + 40, myY + 40, 10,10);
    total = total + 5;
    }
    else if (faceNumber == 6)
    {
    fill(0);
    ellipse( myX + 40, myY + 10, 10,10);
    ellipse( myX + 40, myY + 40, 10,10);
    ellipse( myX + 40, myY + 25, 10,10);
    ellipse( myX + 10, myY + 40, 10,10);
    ellipse( myX + 10, myY + 10, 10,10);
    ellipse( myX + 10, myY + 25, 10,10);
    total = total + 6;
    }
  }
}
