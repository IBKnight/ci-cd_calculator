import 'dart:math';
class Calculator {
  static num add(num a, num b) {
    return a + b;
  }

  static num substract(num a, num b) {
    return a - b;
  }

  static num multiply(num a, num b) {
    return a * b;
  }

  static num divide(num a, num b) {
    if (b == 0) {
      return 0;
    }
    return a / b;
  }

  static num mod(num a, num b) {
    return a % b;
  }

  static num sinF(num a) {
    return sin(a);
  }

  static num cosF(num a) {
    return cos(a);
  }

  static num pow(num a, num b) {
    return 0;
  }

  static num sqrt(num a) {
    return 0;
  }

  static num floor(num a) {
    return a.floor();
  }

  static num ceil(num a) {
    return a.ceil();
  }
}
