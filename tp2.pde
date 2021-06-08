String estado;
float y = 60.0;
float x = 10.0;
float z = 30.0;
float v = 50.0;
float velocidad = 3.5;
float radio = 45.0;
PImage goku;

void setup(){  
  size( 700, 700);
  stroke(0.1);
  ellipseMode(RADIUS);
  fill(230, 200, 0);
  PFont fuente;
fuente = loadFont("SaiyanSans-40.vlw");
textFont(fuente);
////////////////////////////////////// 
  estado = "verde";
  
   goku = loadImage( "gokuceleste.png" );
}
void draw() {
  background(40, 150, 200);
 //CREDITOS
  fill(255);
  textSize(30);
   text("Creado", 300, x, 100);
  x = x + velocidad;// incrementa el valor de x
  
   text("por", 300, z, 100);
  z = z + velocidad;// incrementa el valor de z
   text("Jeremias Donati", 300, v, 100);
  v = v + velocidad;// incrementa el valor de v
  
  
  fill(240, 180, 0);
  ellipse(133, y,radio, radio);
  y = y + velocidad;// incrementa el valor de y
  
  //estrella
    fill(230, 0, 0);
  circle(133, y,10);
  y = y + velocidad;// incrementa el valor de y
  
  strokeWeight( 2 );
  stroke( 100, 50, 50 );
  textSize(100);
  fill(230, 220, 0);
  text("Dragon ", 180, 150);
  fill(240, 160, 0);
  text(" o ", 310, 150);
  fill(230, 0, 0);
  text("BallZ", 400, 150);
  
 //logo de dragon ball
   fill(230, 220, 0);
//circle
 circle( 350, 170, 15);
 //circle
 circle( 390, 170, 15);
 //circle
 circle( 430, 170, 15);
 //circle
 circle( 470, 170, 15);
 //circle
 circle( 510, 170, 15);
 //circle
 circle( 550, 170, 15);
 
 image( goku, 500, 400 );
 
  // ----------------------------------
  if( estado.equals("amarillo") ){
    background( 230, 200, 0 );

  } // ----------------------------------  
  else if( estado.equals("naranja") ){
    background( 250, 150, 0 );
  
  } // ----------------------------------
  else if( estado == "negro" ){  //forma incorrecta de consultar contenido de un string
    background( 0, 0, 0 );
      } // ----------------------------------
  else if( estado == "blanco" ){  //forma incorrecta de consultar contenido de un string
    background( 255 );
     } // ----------------------------------
  else if( estado == "azul" ){  //forma incorrecta de consultar contenido de un string
    background( 0, 0, 230 );
    } // ----------------------------------
  else if( estado == "rojo" ){  //forma incorrecta de consultar contenido de un string
    background( 230, 0, 0 );
    
  }
}
void keyPressed(){  //EVENTOS
  if( key == 'x' )
    estado = "negro";
    if( key == 'a' )
    estado = "amarillo";
    if( key == 'n' )
    estado = "naranja";
    if( key == 'w' )
    estado = "blanco";
     if( key == 'b' )
    estado = "azul";
    if( key == 'r' )
    estado = "rojo";
    
}
  
  
