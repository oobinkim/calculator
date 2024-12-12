import 'package:test/test.dart';
import '../lib/calculator.dart';

/**
    Calculator 클래스 테스트
    - 목적: Calculator의 계산 기능을 검증
    - 테스트 항목:
    1. 덧셈
    2. 뺄셈
    3. 곱셈
    4. 나눗셈
    5. 나눗셈에서 0으로 나누는 경우
    6. 유효하지 않은 연산자
    7. 잘못된 입력 형식
 */
void main() {
  group('Calculator Tests', () {
    // 덧셈 테스트
    test('Addition', () {
      final calculator = Calculator();
      expect(calculator.calculate('10 + 5'), 15); // 10 + 5 = 15 검증
    });

    // 뺄셈 테스트
    test('Subtraction', () {
      final calculator = Calculator();
      expect(calculator.calculate('10 - 5'), 5); // 10 - 5 = 5 검증
    });

    // 곱셈 테스트
    test('Multiplication', () {
      final calculator = Calculator();
      expect(calculator.calculate('10 * 5'), 50); // 10 * 5 = 50 검증
    });

    // 나눗셈 테스트
    test('Division', () {
      final calculator = Calculator();
      expect(calculator.calculate('10 / 5'), 2); // 10 / 5 = 2 검증
    });

    // 0으로 나눌 때 예외 처리 테스트
    test('Division by zero throws an error', () {
      final calculator = Calculator();
      expect(() => calculator.calculate('10 / 0'), throwsArgumentError); // 0으로 나누면 예외 발생
    });

    // 유효하지 않은 연산자 테스트
    test('Invalid operator throws an error', () {
      final calculator = Calculator();
      expect(() => calculator.calculate('10 % 5'), throwsArgumentError); // '%'는 유효하지 않은 연산자
    });

    // 잘못된 입력 형식 테스트
    test('Invalid input format throws an error', () {
      final calculator = Calculator();
      expect(() => calculator.calculate('10 +'), throwsArgumentError); // 연산자 뒤에 숫자가 없음
      expect(() => calculator.calculate('+ 5'), throwsArgumentError); // 숫자 없이 연산자만 있음
      expect(() => calculator.calculate('10 5'), throwsArgumentError); // 연산자가 없음
    });
  });
}
