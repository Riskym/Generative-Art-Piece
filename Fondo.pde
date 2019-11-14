class Fondo
{
  boolean bandera = true;
  int seleccion = 0;
  color c;
  Fondo(color c_Fondo)
  {  
   c = c_Fondo; 
  }
  
  void display()
  {
   if(bandera == true)
   {
   fill(c);
   rect(0,0,width,height); 
   bandera = false;
   }
  }
  
  void cambiarColor()
  {
   if(mousePressed)
   {
    seleccion = seleccion +1;
    if(seleccion == 1 || seleccion == 2)
    {
      c=0;
    }
    if(seleccion == 3 || seleccion == 4)
    {
      c=255;
    }
    bandera = true;
    if(seleccion > 5)
   {
     seleccion = 0;
   }
   println(seleccion);
   
   
   }
  }
  
}
