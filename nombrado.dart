  class PersonaConNombre{
              
              String nombre;
               String tipoConstructor;
              int edad;
              late String apellido;
             late String ciudad;
              //late palabra reservada valor de la variable se inicializará más tarde en el ciclo de vida de la aplicación,
              // pero no necesariamente en el momento de su declaración.

              PersonaConNombre(this.nombre, this.tipoConstructor, this.edad);
                
              PersonaConNombre.prueba( String prueba, this.apellido)
                : nombre="duvan mas constructor nombrado",
                  tipoConstructor= "constructor nombrado prueba",
                  edad= 15;

             PersonaConNombre.prueba2(String prueba2, this.ciudad)
             :  nombre="duvan mas constructor nombrado",
                  tipoConstructor= "constructor nombrado prueba",
                  edad= 20;
              
           }

             void main(){

              PersonaConNombre estudiante1=new PersonaConNombre("edison","nombrado", 23);
              PersonaConNombre estudiante2=new PersonaConNombre("valentina", "factory", 19 );
              PersonaConNombre estudiante3=new PersonaConNombre.prueba("prueba", "rosa");
              PersonaConNombre instancia= new PersonaConNombre.prueba2("prueba2","pereira");
              print("${estudiante3.nombre} ${estudiante3.apellido} ");
            }