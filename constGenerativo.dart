import 'dart:io';

class Persona {
  String nombre;
  int edad;

  // Constructor generativo
  Persona(this.nombre, this.edad) {
    if (edad <= 0) {
      throw ArgumentError('La edad debe ser un número positivo.');
    }
  }

  // Método para imprimir información de la persona
  void mostrarInformacion() {
    print('Nombre: $nombre, Edad: $edad');
  }
}

void main() {
  try {
    var persona1 = Persona('Alice', 30);
    persona1.mostrarInformacion();

    var persona2 = Persona('Bob', -5); // Esto lanzará una excepción
    persona2.mostrarInformacion(); // Esto no se ejecutará
  } catch (e) {
    print('Error: $e');
  }
}











