float l = 100;

public void setup()
{
	size(800,800);
}
public void draw()
{
	background(20);
	sierpinski(0,800,l);
}
public void mouseDragged()//optional
{

}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
     l+=15;
    } else if (keyCode == DOWN) {
     l-=15;
    } 
  }
  if(l <= 10){
  l= 10;
  }
}
public void sierpinski(float x, float y, float len) 
{
	float x1 = x;
  float y1 = y;
  float x2 = (x+abs(len));
  float y2 = y;
  float x3 = x+abs(len/2);
  float y3 = y-sqrt(2)*len/2;
	if(len>=100)
	{
		triangle(x1, y1, x2, y2, x3, y3);
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4,y-sqrt(2)*len/4,len/2);
	}
	else
	{
		noFill();
		stroke(200,100,0);
		triangle(x1,y1,x2,y2,x3,y3);
	}
	

}
