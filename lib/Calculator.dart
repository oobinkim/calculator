import 'dart:io';
import 'factory/operation_factory.dart';


/**
    계산기 class
    - parameters: [input] 계산에 필요한 입력 문자열 (형식: "<피연산자1> <연산자> <피연산자2>"
    - interface:  [OperationFactory] - 연산자를 기반으로 [Operation] 객체생성
    - exception:  틀린 입력형식, 유효하지 않은 연산자
    - return: [double] - 입력된 연산을 수행한 결과값
 */

class Calculator {
  double calculate(String input) {
    final parts = input.split(' ');
    if (parts.length != 3) {
      throw ArgumentError('입력 형식 틀림: "<피연산자1> <연산자> <피연산자2>"');
    }

    final operand1 = double.parse(parts[0]);
    final operator = parts[1];
    final operand2 = double.parse(parts[2]);
    final operation = OperationFactory.getOperation(operator);
    return operation.execute(operand1, operand2);
  }
}