

//Genero la clase pintura
class Pintura
{
  float x, y;
  float diam;
  color c, c2;
  int r,g,b;

  
  //Establezco los parámetros que va a utilizar
  Pintura(float xpos, float ypos, float diametro, color col)
 {

  x = xpos;
  y = ypos;
  //diam = diametro;
  c = col;
 

 }
//Genero el movimiento
void mover()
{
  //Como debe ir de abajo hacia arriba, la posición es y-1
  y = y-2;
  //Para simular un movimiento más orgánico, le indico que se mueva sobre el eje X
  //Entre los valores de 1 y -1
  x = random(x-1,x+1);
  //Establezco el diámetro en 1, el valor de diam está flotado
  //Porque puede convertirse en una de las variables interactivas
  //diam = 1;
  
  
  if(mouseY<200)
  {
   c2 = color(245,0,0);   
  }
  
  if(mouseY>200 && mouseY<400)
  {
   c2 = color(random(10,255),0,random(10,150));
  }
  
  if(mouseY>400)
  {
   c2 = color(0);
  }
  
  
  
  //Establezco que si supera la linea, vuelva a empezar desde y 600
  int r = int(random(0,100));
  if(y < 230 && r < 2)
  {
      y= 600;
      c = c2;
  } 
    else if(y < 130){
      y=600;
      c=c2;
    }
  
  
    
  diam = map(mouseX, 0, width, 1, 5);
}
//Hago los elipses visibles
void visibilidad()
{
  //Establezco sus propiedades
 
  
  
  fill(c);
  ellipse(x, y, diam, diam);
  
  
  
}
}
