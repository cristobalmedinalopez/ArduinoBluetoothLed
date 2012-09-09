/*
 * Fecha: 27/07/2011
 * Autor: Cristóbal Medina López
 * Licencia:
 * Este Software está distribuido bajo la licencia general pública de GNU, GPL. Puedes encontrar esta licencia completa en http://www.gnu.org.
 * Es gratuito, puedes copiar y utilizar el código libremente sin cargo alguno. Tienes derecho a modificar
 * el código fuente y a distribuirlo por tu cuenta, siempre informando de la procedencia original.
 *
*/

char val;         // variable para recibir los datos desde el puerto serie

void setup()
{
  //Inicializamos los pines de salida para enceder los led
  pinMode(7, OUTPUT);  
  pinMode(6, OUTPUT);
  pinMode(5, OUTPUT);
 
  Serial.begin(9600);       // Iniciamos el puerto serie a 9600bps
 
}
 
void loop() {
  if( Serial.available() ){    // Si hay algo que leer
      val = Serial.read();  
  }
  
  if( val == '7' )              // si recibimos un 7
  {
      digitalWrite(7, HIGH);    // encendemos el led 7
      delay(1000);              // esperamos un segundo
      Serial.println("7 on");	//escribimos en el puerto serie
  }
  if( val == '4'){				// si recibimos un 
      digitalWrite(7, LOW);   	// apagamos el led 7
      delay(1000);                 
      Serial.println("7 off"); 
  }
  if( val == '6' )              
  {
      digitalWrite(6, HIGH);   
      delay(1000);               
      Serial.println("6 on");
  }
  if( val == '3'){
     digitalWrite(6, LOW);    
     delay(1000);               
     Serial.println("6 off"); 
  }
  
  if( val == '5' )            
  {
      digitalWrite(5, HIGH);   
      delay(1000);               
      Serial.println("5 on");
  }
  if ( val == '2'){
      digitalWrite(5, LOW);    
      delay(1000);               
      Serial.println("5 off"); 
  }
  
}
