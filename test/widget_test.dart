import 'package:ci_cd_calculator/utils/calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("calc operations tests", () {
    test('add', () => expect(Calculator.add(5, 5), 10));
    test('subs', () => expect(Calculator.substract(5, 5), 0));

    test('default divide', () => expect(Calculator.divide(5, 2), 2.5));
    test('division by zero', () => expect(Calculator.divide(5, 0), 'Division by zero'));

    test('multiply', () => expect(Calculator.multiply(30, 2), 60));
    test('mod', () => expect(Calculator.mod(7, 2), 1));
    test('mod with division by zero', () => expect(Calculator.mod(7, 0), 'Division by zero'));

    test('ceil', () => expect(Calculator.ceil(4.2), 5));
    test('floor', () => expect(Calculator.floor(3.8), 3));

    test('sin', () => expect(Calculator.sinF(0), 0));
    test('cos', () => expect(Calculator.cosF(0), 1));

    test('pow', () => expect(Calculator.powF(5, 2), 25));
    test('sqrt', () => expect(Calculator.sqrtF(289), 17));
  });
}
