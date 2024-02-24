import 'package:ci_cd_calculator/utils/calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("calc operations tests", () {
    test('add', () => expect(Calculator.add(5, 5), 10));
    test('subs', () => expect(Calculator.substract(5, 5), 0));

    test('default divide', () => expect(Calculator.divide(5, 2), 2.5));
    test('division by zero', () => expect(Calculator.divide(5, 0), 0));

    test('multiply', () => expect(Calculator.multiply(30, 2), 60));
    test('mod', () => expect(Calculator.mod(7, 2), 1));
  });
}
