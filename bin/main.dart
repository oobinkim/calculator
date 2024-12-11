import '../lib/calculator.dart';

/**
    Main class
    - parameters: [args] - 명령행 인수로 전달되는 입력값
    - interface: [Calculator] 계산하기위해서
    - exception: 잘못된 입력 형식, 유효하지 않은 연산자
    - return: 콘솔에 계산 결과 출력
 */

void main(List<String> args) {
  // 입력값이 없는 경우 사용법 안내 메시지를 출력하고 종료
  if (args.isEmpty) {
    print('사용법: dart run bin/main.dart <operand1> <operator> <operand2>');
    return;
  }

  try {
    final calculator = Calculator();

    final result = calculator.calculate(args.join(' '));

    print(result);
  } catch (e) {
    //예외 메세지
    print('Error: ${e.toString()}');
  }
}
