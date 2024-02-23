import 'package:ci_cd_calculator/utils/calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('add', () => expect(Calculator.add(5, 5), 10));
}
