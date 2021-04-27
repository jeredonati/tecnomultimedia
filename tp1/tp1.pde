//Circulo cromatico
void setup() { 

  size( 700, 600 ); 
  colorMode( HSB );
  colorMode( HSB, 360, 100, 100 ); 
 strokeWeight(2);
background(50);

}

void draw() {  
//ROJO: 0
fill(0, 100, 100);
rect(100, 50, 150, 500);
//VERDE: 120
fill(120, 100, 100);
rect(300, 50, 150, 500);

//AZUL: 240
fill(240, 100, 100);
rect(500, 50, 150, 500);


//amarillo:60
fill(60, 100, 100);
triangle( 280, 200, 230, 350, 320, 350);

//cyan:180
fill(180, 100, 100);
triangle( 480, 200, 520, 350, 430, 350);

//magenta:300
fill(300, 100, 100);
triangle( 70, 200, 110, 350, 20, 350);

//magenta:300
fill(300, 100, 100);
triangle( 650, 200, 690, 350, 600, 350);
}
