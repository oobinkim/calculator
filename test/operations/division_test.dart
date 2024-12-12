import 'package:test/test.dart';
import '../../lib/operations/division.dart';

/**
    Division 클래스 테스트
    - 목적: Division 클래스의 나눗셈 연산 기능을 검증
    - 테스트 항목:
    1. 두 양수의 나눗셈
    2. 양수와 음수의 나눗셈
    3. 두 음수의 나눗셈
    4. 0으로 나눌 때 예외 처리
 */
void main() {
  group('Division Operation Tests', () {
    // 두 양수의 나눗셈 테스트
    test('Division of two positive numbers', () {
      final division = Division();
      expect(division.execute(10, 5), 2); // 10 / 5 = 2 검증
    });

    // 양수와 음수의 나눗셈 테스트
    test('Division by a negative number', () {
      final division = Division();
      expect(division.execute(10, -5), -2); // 10 / (-5) = -2 검증
    });

    // 두 음수의 나눗셈 테스트
    test('Division of two negative numbers', () {
      final division = Division();
      expect(division.execute(-10, -5), 2); // (-10) / (-5) = 2 검증
    });

    // 0으로 나눌 때 예외 처리
    test('Division by zero throws an error', () {
      final division = Division();
      expect(() => division.execute(10, 0), throwsArgumentError); // 0으로 나눌 때 예외 발생
    });
  });
}
