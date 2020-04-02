/*
 * El siguiente c�digo me permite dibujar una esfera.
 * No incluye fondo.
*/

#include "colors.inc" //Para incluir nombres de colores

//C�mara
//Me permite colocar una c�mara y aputarla a una localizaci�n espec�fica.
camera{
    //D�nde se encuentra la c�mara con coordenadas <x,y,z>
    location <4,10,25>
    //A donde apunta con coordenadas <x,y,z>
    look_at <4,5,8>
    }

//Fuente de luz
global_settings { ambient_light rgb<1, 1, 1> 
} 

//Esfera
sphere{
    //Localizaci�n y radio
    <4,5,8>, 3.54
    //Textura de la esfera
    texture{
	//Solo se usa pigmento    
        pigment{
	    //Color en RGB y transparencia del color
            color rgbt<11,2,1,0.8>
        }
	//El acabado final y representa una propiedad de la reflexi�n de la luz
        finish{
            phong 1         
        }   
    }
}

//Plano 
  plane {
    y, -1
    texture {     
	    pigment{     
	        //azul 
		    color rgb<0,1,1>
	    }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0.25
      }
    }
  }

//Plano 
  plane {
    x, -1
    texture {
	    pigment{
	        //gris
		    color rgb<1,1,1>
	    }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0.25
      }
    }
  }
  
 //Plano 
  plane {
    z, 1
    texture {
	    pigment{ 
	        //amarillo
		    color rgb<1,1,0>
	    }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0.25
      }
    }
  }  
  
