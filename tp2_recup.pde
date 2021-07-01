
int pantalla;  //también podría ser tipo String
PImage sponge;
PImage sponge1;
PImage sponge2;
void setup() {
  size( 680, 660 );
  textSize( 50 );
  textAlign( CENTER, CENTER );
  PFont fuente;
fuente = loadFont("SpongeboyMeBob-40.vlw");
textFont(fuente);
sponge = loadImage( "img1.png" );
   sponge1 = loadImage( "img2.png" );
   sponge2 = loadImage( "img3.png" );

  //inicio en la primer pantalla
  pantalla = 0;
}

void draw() {  //SEGMENTO el ciclo DRAW en 4 PANTALLAS
  background( #E8CC6E );
  println( frameCount );
   //---------------------------------------------------
  if ( pantalla == 0 ) 
    background( #E8CC6E );
    image( sponge1, 1, 1, 680, 660 );
    fill(#372F9B);
    textSize(40);
    text( "Tecnologia multimedial", width/2, height/2 );
    textSize(30);
    text( "Trabajo practico", width/2, height/3 );
    if( frameCount > (300) ){  //5 = segundos, 60 = frameRate (cuadros por segundo)
      pantalla = 1;
    }
  //---------------------------------------------------
  if ( pantalla == 1 ) {
    background( #E8CC6E );
    image( sponge, 1, 1, 680, 660 );
    fill(#FF7E7E);
    textSize(40);
    text( "Closing theme song", width/2, height/2 );
    textSize(30);
    text( "Spongebob", width/2, height/3 );
    if( frameCount > (400) ){  //5 = segundos, 60 = frameRate (cuadros por segundo)
      pantalla = 2;
    }
    
  //---------------------------------------------------
  } if ( pantalla == 2 ) {
    background( #E8CC6E );
    image( sponge, 1, 1, 680, 660 ); 
    textSize(40);
    text( "Stephen Hillenburg ", width/2, height/2 );
    textSize(30);
    text( "EXECUTIVE PRODUCER" , width/2, height/3 );
    if( frameCount > (500) ){  //5 = segundos, 60 = frameRate (cuadros por segundo)
      pantalla = 3;
    }

  //---------------------------------------------------
  } if ( pantalla == 3 ) {
    background( #E8CC6E );
    image( sponge, 1, 1, 680, 660 );
   textSize(40);
    text( "Derek drymon ", width/2, height/2 );
    textSize(30);
    text( "SUPERVISING PRODUCER" , width/2, height/3 ); 

   if( frameCount > (600) ){   //5 = segundos, 60 = frameRate (cuadros por segundo)
      pantalla = 4;
    }
   
  //---------------------------------------------------
   } if ( pantalla == 4 ) {
    background( #E8CC6E );
    image( sponge, 1, 1, 680, 660 );
    textSize(40);
    text( "Helen kalafatic ", width/2, height/2 );
    textSize(30);
    text( "LINE PRODUCER", width/2, height/3 );
    
    if( frameCount > (700) ){   //5 = segundos, 60 = frameRate (cuadros por segundo)
      pantalla = 5;
    }

  //---------------------------------------------------
   } if ( pantalla == 5 ) {
    background( #E8CC6E );
    image( sponge, 1, 1, 680, 660 );
   textSize(30);
    text( "CAST ", width/2, 60 );
 
    text( "Tom Kenny..........SPONGEBOB", width/2, 130 );
    text( "Roger Bumpass......SPONGEBOB", width/2, 160 );
    text( "Clancy Brown.......SPONGEBOB", width/2, 190 );
    text( "Bill Fagerbakke....SPONGEBOB", width/2, 220 );
    text( "Tom Kenny..........NARRATOR", width/2, 250 );
    text( "Carolyn Lawrence...SPONGEBOB", width/2, 280 );
    if( frameCount > (750) ){   //5 = segundos, 60 = frameRate (cuadros por segundo)
      pantalla = 6;
    }

  //---------------------------------------------------
   } if ( pantalla == 6 ) {
    background( #E8CC6E );
    image( sponge, 1, 1, 680, 660 );
    textSize(35);
    text( "MUSIC EDITOR ", width/2, 60 );
    textSize(30);
    text( "Nicolas Carr", width/2, 90 );
    
     textSize(35);
    text( "MUSIC COMPOSED BY ", width/2, 130 );
    textSize(30);
    text( "The Blue Hawaiians", width/2, 160 );
    text( "Sage Guyton Y Jeremy Wakefield", width/2, 190 );
    text( "Steve Belfer", width/2, 220 );
    
    textSize(35);
    text( "MAIN TITTLE COMPOSED BY ", width/2, 260 );
    textSize(30);
    text( "Hanj Smith Music", width/2, 290 );
    
    
    
    if( frameCount > (850) ){   //5 = segundos, 60 = frameRate (cuadros por segundo)
      pantalla = 7;
    }

  //---------------------------------------------------
  } if ( pantalla == 7 ) {
    background( #E8CC6E );
    image( sponge2, 1, 1, 680, 660 );

  }
   else if( frameCount > (900) ){
      pantalla = 8;  //acá podría hacer que vuelva a la primer pantalla
    }
    
  }
