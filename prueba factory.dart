class PersonaFactory {
  String nombre;
  String tipoConstructor;
  int edad;

  PersonaFactory._(this.nombre, this.tipoConstructor, this.edad);

  factory PersonaFactory.nuevaPersona(String nombre, String tipoConstructor, int edad) {
    // Realizar alguna lógica o validación aquí si es necesario antes de crear la instancia
    if (nombre.isNotEmpty && edad > 0) {
      return PersonaFactory._(nombre, tipoConstructor, edad);
    } else {
      // Si la validación falla, lanzamos una excepción
      throw ArgumentError('Nombre no puede estar vacío y edad debe ser mayor que cero');
    }
  }
}

void main() {
  // Ejemplo de uso
  try {
    var persona = PersonaFactory.nuevaPersona('fabio', 'Constructor X', 25);
    print('Persona creada: ${persona.nombre}, ${persona.tipoConstructor}, ${persona.edad}');
  } catch (e) {
    print('Error al crear persona: $e');
  }
}
