public void setup()
{
	background(209,244,255);
	size(800,800);
	fill(0);
}

public void draw()
{
	line(70,750,90,700);//draw a kid blowing the bubbles
	line(110,750,90,700);
	line(90,700,90,625);
	line(90,635,70,700);
	line(90,635,170,635);
	ellipse(90,600,50,50);
	stroke(0,191,255);
	fill(0,191,255);
	line(170,625,170,645);
	ellipse(170, 615, 20, 20);
	fill(255);
	ellipse(170,615,18,18);
	fractal(200,600,200000);
}

public void mouseDragged()//optional
{

}

public void fractal(int x, int y, int len) 
{
	if(len < 15)
	{
		//triangle(x, y, x+len/2, y-len, x+len, y);
		ellipse(x, y, len,len);
	}
	else 
	{
		stroke(0);
		fill(0,191,255);
		fractal(x,y,len/2);	
		fill(0,0,255);
		fractal(x+len/2,y-len/2,len/3);
		fill(255);
		fractal(x+len/2,y-len/4,len/4);	
	}
}