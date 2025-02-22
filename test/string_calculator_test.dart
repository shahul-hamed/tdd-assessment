import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_task/string_calculator.dart';

void main() {

  StringCalculator stringCalculator = StringCalculator();
  // Test for handling a empty string.
  test('Add numbers from a string if string is empty return 0 ', (){
    expect(stringCalculator.addNumbersFromString(""), 0);
  });
  /// Test for Adding numbers from a string with comma separated values
  test('Add numbers from a string with comma separated values', (){
    expect(stringCalculator.addNumbersFromString('1,2,5'), 8);
  });
}