import 'operation.dart';

/**
    곱셈 class
    - parameters: 피연산자1, 피연산자2
    - iterface: [Operation]
    - return : operand1*operand2
 */

class Multiplication implements Operation{
  @override
  double execute (double operand1, double operand2) => operand1 * operand2;
}