class Ejercicio1Model {

  // mcd
  static int calcularMCD(int a, int b) {
    while (b != 0) {
      int residuo = a % b;
      a = b;
      b = residuo;
    }
    return a;
  }

  // Rresultado
  static int verificarPrimosRelativos(int num1, int num2) {
    int mcd = calcularMCD(num1, num2);
    return mcd == 1 ? 1 : 0;
  }
}