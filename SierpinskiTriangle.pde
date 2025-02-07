boolean colorChange = false;
int colorR = 54;
int colorG = 155;
int colorB = 230;
int baseLen = 0;
public void setup()
{
  size(800,800);
}
public void draw()
{
  background(255);
  if ( colorChange){
    sierpinski(50, 750, 300+ baseLen);
  } else {
  sierpinski(50, 750, 300);
  fill ( colorR, colorG, colorB);
}
}
public void mousePressed()//optional
{
  colorChange = true;
  baseLen = baseLen + 150;
  System.out.print(baseLen);
  if ( baseLen == 2700){
  baseLen = 1200;
  }
  
  
  if (Math.random() > 7){
  colorG = (int)(Math.random()*255);
  }
  else if (Math.random() > 4)
  {
  colorB = (int)(Math.random()*255);
  }
  else 
  colorR = (int)(Math.random()*255);
  
  System.out.println("pressed");
}
public void sierpinski(int x, int y, int len) 
{
if (len <= 20){
  float factor = y/5;
  
  fill ( colorR, colorG + factor, colorB - factor);
  triangle(x,y, x + len, y, x + len/2, y-len);
}
else{
  sierpinski(x,y, len/2);
  sierpinski(x+len/2, y, len/2);
  sierpinski(x+len/4, y - len/2, len/2);
   
}
}
