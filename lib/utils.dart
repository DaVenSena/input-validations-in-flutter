List<String> validateName(String name) {
  final errors = [NameErrors.empty, NameErrors.specialNumber];

  if (name.isNotEmpty) errors.remove(NameErrors.empty);

  if (RegExp(r'^[a-zA-z]*$').hasMatch(name)) {
    errors.remove(NameErrors.specialNumber);
  }

  return errors;
}

List<String> validateId(String id) {
  final List<String> errors = [
    IdErrors.empty,
    IdErrors.letters,
    IdErrors.special,
  ];

  if (id.isNotEmpty) errors.remove(IdErrors.empty);

  if (RegExp(r'^[^a-zA-z]+$').hasMatch(id)) {
    errors.remove(IdErrors.letters);
  }

  if (RegExp(r'^[0-9]*$').hasMatch(id)) {
    errors.remove(IdErrors.special);
  }

  return errors;
}

String validate(String name, String id) {
  final nameErrors = validateName(name);

  if (nameErrors.isNotEmpty) {
    return nameErrors.first;
  }

  final idErrors = validateId(id);

  if (idErrors.isNotEmpty) {
    return idErrors.first;
  }

  return "Se valido correctamente";

  /* ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Se valido correctsamente"),
    )); */
}

abstract class NameErrors {
  static const String empty = "Debe ingresar su nombre";
  static const String specialNumber =
      "El nombre no puede contener caracteres especiales o numeros";
}

abstract class IdErrors {
  static const String empty = "Debe ingresar su cédula";
  static const String letters = "La cédula no debe contener letras";
  static const String special =
      "La cédula no debe contener caracteres especiales";
}
