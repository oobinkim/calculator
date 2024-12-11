import 'operation.dart';

/**
    나눗셈 class
    - parameters: 피연산자1, 피연산자2
    - iterface: [Operation]
    - exception: 0으로는 나눌수 없음, divided by zero error
    - return : operand1/operand2
 */

class Division implements Operation {
  @override
  double execute(double operand1, double operand2) {
    if (operand2 == 0) {
      throw ArgumentError('0으로는 나눌 수 없음.');
    }
    return operand1 / operand2;
  }
}
