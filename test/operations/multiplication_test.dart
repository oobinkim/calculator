import 'package:test/test.dart';
import '../../lib/operations/multiplication.dart';

/**
    Multiplication 클래스 테스트
    - 목적: Multiplication 클래스의 곱셈 연산 기능을 검증
    - 테스트 항목:
    1. 두 양수의 곱셈
    2. 양수와 음수의 곱셈
    3. 두 음수의 곱셈
 */
void main() {
  group('Multiplication Operation Tests', () {
    // 두 양수의 곱셈 테스트
    test('Multiplication of two positive numbers', () {
      final multiplication = Multiplication();
      expect(multiplication.execute(10, 5), 50); // 10 * 5 = 50 검증
    });

    // 양수와 음수의 곱셈 테스트
    test('Multiplication of a positive and negative number', () {
      final multiplication = Multiplication();
      expect(multiplication.execute(10, -5), -50); // 10 * (-5) = -50 검증
    });

    // 두 음수의 곱셈 테스트
    test('Multiplication of two negative numbers', () {
      final multiplication = Multiplication();
      expect(multiplication.execute(-10, -5), 50); // (-10) * (-5) = 50 검증
    });
  });
}
