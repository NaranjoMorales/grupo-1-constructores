import 'dart:io';

class persona {
  String nombre;
  String apellidos;
  int edad;

  //constructor normal
  persona(this.nombre, this.apellidos, this.edad);

  //constructor dde redireccion
  persona.datos(String nombre, String apellidos) : this(nombre, apellidos, 12);

  //metodo para cambiar el nombre
  void setNombre(String nombre) {
    this.nombre = nombre;
  }
}

void main() {
  //crear instancia con el constructor normal
  persona temp = new persona("ban", "maradona", 14);

  //crear instancia con el constructor de redireccion
  persona p1 = new persona.datos("diego", "mendez");

  //imprimir el nombre pero con el constructor normal
  print('${temp.nombre}--${temp.apellidos}');

  //imprimir el nombre pero con el constructor de redireccion
  print('${p1.nombre}--${p1.apellidos}');


  //leer nuevo nombre y cambiarlo mediante el metodo set
  print('digite nuevo nombre');
  String nuevo = stdin.readLineSync()!;
  p1.setNombre(nuevo);

  //imprimir el nombre del constructor normal y luego el de redireccion
  print('${temp.nombre} ${temp.apellidos} y ${p1.nombre} ${p1.apellidos} ');
}