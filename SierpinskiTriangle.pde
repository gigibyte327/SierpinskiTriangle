public void setup()
{
	background(255);
 size(700,700);
}
public void draw()
{
	sierpinski(100,600,500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len>20){
		sierpinski(x,       y,      len/2);
		sierpinski(x+len/2, y,      len/2);
		sierpinski(x+len/4, y-len/2,len/2);
	}
	else{
		fill(0);
		triangle(x,y,x+len,y,x+len/2,y-len);
	}
}