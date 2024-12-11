import 'dart:io';
import '../lib/calculator.dart';

/**
    Main class
    - 사용자로부터 입력을 받아 계산 결과를 출력
    - interface: [Calculator] 계산하기위해서
    - exception: 잘못된 입력 형식, 유효하지 않은 연산자
    - return: 콘솔에 계산 결과 출력
 */

void main() {
  while (true) {
    // 사용자 입력 요청
    print('사용법: <operand1> <operator> <operand2>, 종료: exit 입력');

    final input = stdin.readLineSync();

    if (input == null || input.trim().isEmpty) {
      print('Error: 입력이 없습니다.');
      continue;
    }

    // 종료 조건 확인
    if (input.trim().toLowerCase() == 'exit') {
      print('종료');
      break;
    }

    try {
      // Calculator 객체 생성 및 계산 수행
      final calculator = Calculator();
      final result = calculator.calculate(input.trim());

      // 결과 출력
      print('결과: $result');
    } catch (e) {
      // 에러 메시지 출력
      print('Error: ${e.toString()}');
    }
  }
}
