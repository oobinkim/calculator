import 'package:test/test.dart';
import '../../lib/factory/operation_factory.dart';
import '../../lib/operations/addition.dart';
import '../../lib/operations/subtraction.dart';
import '../../lib/operations/multiplication.dart';
import '../../lib/operations/division.dart';

/**
    OperationFactory 클래스 테스트
    - 목적: 연산자에 따라 올바른 Operation 객체를 반환하는지 검증
    - 테스트 항목:
    1. 덧셈 객체 반환
    2. 뺄셈 객체 반환
    3. 곱셈 객체 반환
    4. 나눗셈 객체 반환
    5. 유효하지 않은 연산자에 대한 예외 처리
 */
void main() {
  group('OperationFactory Tests', () {
    test('Addition operation retrieval', () {
      final operation = OperationFactory.getOperation('+');
      expect(operation, isA<Addition>()); // 덧셈 객체 반환 검증
      expect(operation.execute(10, 5), 15); // 10 + 5 = 15 검증
    });

    test('Subtraction operation retrieval', () {
      final operation = OperationFactory.getOperation('-');
      expect(operation, isA<Subtraction>()); // 뺄셈 객체 반환 검증
      expect(operation.execute(10, 5), 5); // 10 - 5 = 5 검증
    });

    test('Multiplication operation retrieval', () {
      final operation = OperationFactory.getOperation('*');
      expect(operation, isA<Multiplication>()); // 곱셈 객체 반환 검증
      expect(operation.execute(10, 5), 50); // 10 * 5 = 50 검증
    });

    test('Division operation retrieval', () {
      final operation = OperationFactory.getOperation('/');
      expect(operation, isA<Division>()); // 나눗셈 객체 반환 검증
      expect(operation.execute(10, 5), 2); // 10 / 5 = 2 검증
    });

    test('Invalid operation retrieval throws an error', () {
      expect(() => OperationFactory.getOperation('%'), throwsArgumentError); // '%'는 유효하지 않은 연산자
    });
  });
}
