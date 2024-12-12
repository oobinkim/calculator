import 'package:test/test.dart';
import '../../lib/operations/subtraction.dart';

/**
    Subtraction 클래스 테스트
    - 목적: Subtraction 클래스의 뺄셈 연산 기능을 검증
    - 테스트 항목:
    1. 두 양수의 뺄셈
    2. 양수와 음수의 뺄셈
    3. 두 음수의 뺄셈
 */
void main() {
  group('Subtraction Operation Tests', () {
    // 두 양수의 뺄셈 테스트
    test('Subtraction of two positive numbers', () {
      final subtraction = Subtraction();
      expect(subtraction.execute(10, 5), 5); // 10 - 5 = 5 검증
    });

    // 양수와 음수의 뺄셈 테스트
    test('Subtraction of a positive and negative number', () {
      final subtraction = Subtraction();
      expect(subtraction.execute(10, -5), 15); // 10 - (-5) = 15 검증
    });

    // 두 음수의 뺄셈 테스트
    test('Subtraction of two negative numbers', () {
      final subtraction = Subtraction();
      expect(subtraction.execute(-10, -5), -5); // (-10) - (-5) = -5 검증
    });
  });
}
