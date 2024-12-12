import 'package:test/test.dart';
import 'package:calculator/operations/addition.dart';
/**
    Addition 클래스 테스트
    - 목적: Addition 클래스의 덧셈 연산 기능 검증
    - 테스트 항목:
    1. 두 양수의 덧셈
    2. 양수와 음수의 덧셈
    3. 두 음수의 덧셈
 */
void main() {
  group('Addition Operation Tests', () {
    // 두 양수의 덧셈 테스트
    test('Addition of two positive numbers', () {
      final addition = Addition();
      expect(addition.execute(10, 5), 15); // 10 + 5 = 15 검증
    });

    // 양수와 음수의 덧셈 테스트
    test('Addition of a positive and negative number', () {
      final addition = Addition();
      expect(addition.execute(10, -5), 5); // 10 + (-5) = 5 검증
    });

    // 두 음수의 덧셈 테스트
    test('Addition of two negative numbers', () {
      final addition = Addition();
      expect(addition.execute(-10, -5), -15); // (-10) + (-5) = -15 검증
    });
  });
}
