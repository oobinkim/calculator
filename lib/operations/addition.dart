import 'operation.dart';

/**
    덧셈 class
    - parameters: 피연산자1, 피연산자2
    - iterface: [Operation]
    - return : operand1+operand2
 */

class Addition implements Operation {
  @override
  double execute(double operand1, double operand2) => operand1 + operand2;
}