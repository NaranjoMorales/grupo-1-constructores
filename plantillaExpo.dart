import '../poo/taller 1 poo/ejercicio4/Persona.dart';

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
// Constructor por defecto: 


            class PersonaPorDefecto {
    String nombre;
    String tipoConstructor;
    int edad;
        // nota: se inicializan las variables en la lista del constructor  

       // aca se predetermina los valores 
    PersonaPorDefecto() :
        nombre = "valentina",
        tipoConstructor = "por defecto",
        // importante el ":" y ";"
        edad = 30;

    
}

*/ 





/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Constructor Generativo:  
/*
            // es el que ya conocemos, se inicializa la variable en el constructor
            class PersonaGenerativa{
                
                String nombre;
                String tipoConstructor;
                int edad;

                PersonaGenerativa(this.nombre, this.tipoConstructor, this.edad);
            }

            
            */
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Constructor con nombre: 
/*
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
              print(instancia.edad);
            }
*/
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
//Constructor constant:

              class PersonaConstant{
                  
                  final String nombre;
                  final tipoConstructor;
                  final int edad;

                 const PersonaConstant(this.nombre, this.tipoConstructor, this.edad);
                 // para crear la instancia  se agrega const al inicio y no se usa new 
              } 

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Constructor de redirección: 
                class PersonaRedireccion{
                    
                    String nombre;
                     String tipoConstructor;
                    int edad;

                  PersonaRedireccion(this.nombre, this.tipoConstructor, this.edad);
                 // otro constrUctor nombrado porque ya existe el constructor generativo en esta clase
                  PersonaRedireccion.nuevaPersona(String nombre):this(nombre, "redirecionamiento de constructor",30);
                }

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Constructores de fábrica:
              class PersonaFactory{
                  
                  String nombre;
                  String tipoConstructor;
                  int edad;

                 PersonaFactory(this.nombre, this.tipoConstructor, this.edad);
                  
                  // 1- definir un Constructor privado con "._" tecnica de encapsulamiento
                  PersonaFactory._(this.nombre, this.tipoConstructor, this.edad);

                  // Constructor factory para crear instancias de PersonaFactory
                  factory PersonaFactory.nuevaPersona(String nombre, String tipoConstructor, int edad) {
                    // Realizar alguna lógica o validación aquí si es necesario antes de crear la instancia
                    return PersonaFactory._(nombre, tipoConstructor, edad);
                  }
              }
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

 void main(){
  // Instancias por clase:
  PersonaPorDefecto persona1=new PersonaPorDefecto();
  PersonaGenerativa persona2=new PersonaGenerativa("duvan","generativo", 30);
  PersonaConNombre  persona3=new PersonaConNombre("vocero", "con Nombre", 30);
  PersonaConNombre persona3Named = PersonaConNombre.prueba("Prueba");
  // al crear la instancia no se usa new 
 const PersonaConstant   persona4=  PersonaConstant("edison", "constant", 30);
    PersonaRedireccion persona5=new  PersonaRedireccion("Jhon", "redireccion", 30);
    PersonaRedireccion persona5Redireccion=new  PersonaRedireccion.nuevaPersona("maria");

    // instancia factory, el constructor esta mas enfocado en crea en privacidad y datos o procedimientos  sensibles
   PersonaFactory personaFactory = PersonaFactory.nuevaPersona("Ana", "factory", 35);

  print(" ////////////////////////////////////////////////////////");
  print(" Ejemplo de constructor por defecto");
  print(" el nombre es: ${persona1.nombre} y el tipo de constructor  es: ${persona1.tipoConstructor} y la edad es ${persona1.edad}" );
  print(" ////////////////////////////////////////////////////////");
  print(" Ejemplo de constructor generativo");
  print(" el nombre es: ${persona2.nombre} y el tipo de constructor  es: ${persona2.tipoConstructor} y la edad es ${persona2.edad}" );
  print(" ////////////////////////////////////////////////////////");
  print(" Ejemplo de constructor por nombre o nombrado");
  print("-");
  print(" el siguiente es el constructor normal de esta clase");
  print(" el nombre es: ${persona3.nombre} y el tipo de constructor  es: ${persona3.tipoConstructor} y la edad es ${persona3.edad}" );
        print("_");
        print(" asi se veria el resultado del constructor con nombre con variables inicializadas por defecto");
  print(" el nombre es: ${persona3Named.nombre} y el tipo de constructor  es: ${persona3Named.tipoConstructor} y la edad es ${persona3Named.edad}" );
  print(" ////////////////////////////////////////////////////////");
  print(" Ejemplo de constructor const con inicializacion de variables en el constructor  ");
  print(" el nombre es: ${persona4.nombre} y el tipo de constructor  es: ${persona4.tipoConstructor} y la edad es ${persona4.edad}" );
    print(" ////////////////////////////////////////////////////////");
     print(" Ejemplo de constructor Redireccion");
       print(" el siguiente es el constructor normal de esta clase");
      print(" el nombre es: ${persona5.nombre} y el tipo de constructor  es: ${persona5.tipoConstructor} y la edad es ${persona5.edad}" );
      print(" asi se veria el resultado del constructor con nombre con variables inicializadas por defecto");
      print(" el nombre es: ${persona5Redireccion.nombre} y el tipo de constructor  es: ${persona5Redireccion.tipoConstructor} y la edad es ${persona5Redireccion.edad}" );
    print(" ////////////////////////////////////////////////////////");
    print(" Ejemplo de constructor Factory");
  print(" el nombre es: ${personaFactory.nombre} y el tipo de constructor  es: ${personaFactory.tipoConstructor} y la edad es ${personaFactory.edad}" );
    print(" ////////////////////////////////////////////////////////");
}

*/
