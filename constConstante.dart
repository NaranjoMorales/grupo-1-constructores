import 'dart:io';

class Ficha {
  final String color;
  final int numero;

  const Ficha(this.color, this.numero);

  //void cambiarColor(String color){
  //  this.color=color; // ERROR
 // }
  
}

void main(){
  //Crear algunas fichas utilizando el constructor constante
  const ficha1 = Ficha('rojo',1);
  const ficha2 = Ficha('azul', 2);
  const ficha3 = Ficha('rojo', 1);

  print('¿ficha1 y ficha2 son la misma ficha? ${ficha1 == ficha2}');
  print('¿ficha1 y ficha3 son la misma ficha? ${ficha1 == ficha3}');
  print('Hash code de ficha1: ${ficha1.hashCode}');
  print('Hash code de ficha3: ${ficha3.hashCode}');

}