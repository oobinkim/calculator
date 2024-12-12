/**
    계산 인터페이스
    - parameters: 피연산자1, 피연산자2
    - double operand1, double operand2 : 소숫점을 지원하기위해 double type
 */

abstract class Operation {
  double execute(double operand1, double operand2);
}