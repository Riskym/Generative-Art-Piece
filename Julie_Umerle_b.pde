//Establezco la cantidad de objetos que va a almacenar el array
int numPintura = 80;
float r, g, b;
float v;
Fondo fondo;

//Genero un array para los objetos y le indico que va a tener tantos lugares como numPintura
Pintura[] pintura = new Pintura[numPintura];

void setup()
{
  v=0;
  size(800, 600);
  background(255);
  frameRate(100);
  noStroke();
  r = random(100,255);
  g = 0;
  b = 0;
  color c = color(r,g,b);
  fondo = new Fondo (255);
//Este for recorre el array
  for (int i = 0; i < pintura.length; i++)
  {
    //Le indico desde que posición va a empezar y
    float y = 600;
    //Le indico el desplazamiento de los objetos sobre el eje x
    float x = i+random(-10,800);
    //Establezco el diámetro de las elipses mediante un map que permite al mouseX dar un numero entre 
    //float diam = map(mouseX, 0, width, 0, 2);
    float diam = 1;
    
    //Establezco que el color va a variar entre distintos tonos de rojo para generar volumen
    c = color(r,g,b);
 
    //Por cada lugar en el array creo un nuevo objeto de la clase pintura
    pintura[i] = new Pintura(x, y, diam, c);
  }
  

}

void draw()
{ 

  fondo.display();
  fondo.cambiarColor();
  
  
  //Este for dibuja los objetos del array en la pantalla 
  for (int i = 0; i < pintura.length; i++)
  {
    //Activo la visibilidad
    pintura[i].visibilidad();
    //Activo el movimiento
    pintura[i].mover();
  }

}
