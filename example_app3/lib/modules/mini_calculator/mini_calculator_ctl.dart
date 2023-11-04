import 'package:get/get.dart';

class MiniCalculatorCtl extends GetxController {
  var display = ''.obs;
  var num1 = 0;
  var myOperator = '';

  void pressNum(String numStr) {
    if (display.value == 'xxx') {
      display.value = '';
    }
    display.value += numStr;
  }

  void plus() {
    num1 = int.parse(display.value);
    display.value = '+';
    myOperator = '+';
  }

  void minus() {
    num1 = int.parse(display.value);
    display.value = '-';
    myOperator = '-';
  }

  void equal() {
    // if display start with '+' or '-', remove it
    if (display.value.startsWith('+') || display.value.startsWith('-')) {
      display.value = display.value.substring(1);
    }
    var num2 = int.parse(display.value);
    if (myOperator == '+') {
      display.value = (num1 + num2).toString();
    } else if (myOperator == '-') {
      display.value = (num1 - num2).toString();
    }
  }

  void clear() {
    num1 = 0;
    display.value = 'xxx';
  }
}
