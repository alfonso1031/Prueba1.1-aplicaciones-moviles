import '../models/ejercicio1_model.dart';

class Ejercicio1Controller {

  String evaluarNumeros(String input1, String input2) {
    // vvalidar campos
    if (input1.trim().isEmpty || input2.trim().isEmpty) {
      return 'Ingrese ambos números.';
    }

    // validar que sean numeros enteros
    final num1 = int.tryParse(input1.trim());
    final num2 = int.tryParse(input2.trim());

    if (num1 == null || num2 == null) {
      return 'Ingrese solo números enteros válidos.';
    }

    //Validar que sean enteros POSITIVOS
    if (num1 <= 0 || num2 <= 0) {
      return 'Ambos números deben ser enteros positivos (mayores a 0).';
    }

    // logica
    int resultado = Ejercicio1Model.verificarPrimosRelativos(num1, num2);

    return resultado == 1 ? 'Resultado: 1 (Son primos relativos)'
        : 'Resultado: 0 (No son primos relativos)';
  }
}