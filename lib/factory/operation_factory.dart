import '../operations/operations.dart';
/**
    OperationFactory class
    - parameters:[operator]연산자
    - interface: [Operation]
    - exception: 유효하지 않은 연산자
    - return: 지정된 연산자에 해당하는 [Operation] 객체
 */
class OperationFactory {
  static Operation getOperation(String operator) {
    final operations = {
      '+': Addition(),
      '-': Subtraction(),
      '*': Multiplication(),
      '/': Division(),
      // TODO: 연산자 추가 [ex) sin,cos,tan(들의 역수포함)/ 미적분]
    };

    if (!operations.containsKey(operator)) {
      throw ArgumentError('유효하지 않은 연산자: $operator');
    }

    return operations[operator]!;
  }
}
