import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_task/string_calculator.dart';

void main() {
  StringCalculator stringCalculator = StringCalculator();

  group('TDD assessment test cases', (){

    // Test for handling a empty string.
    test('Add numbers from a string if string is empty return 0 ', (){
      expect(stringCalculator.addNumbersFromString(""), 0);
    });
    /// Test for Adding numbers from a string with comma separated values
    test('Add numbers from a string with comma separated values', (){
      expect(stringCalculator.addNumbersFromString('1,2,5'), 8);
    });
    /// Test for Adding numbers from a string with newline between numbers
    test('Add numbers from a string with newline between numbers', (){
      expect(stringCalculator.addNumbersFromString('1\n2,4'), 7);
    });
    /// Test for handling negative number
    test('Handle one negative number', (){
      expect(stringCalculator.addNumbersFromString('1,3,-4'), 'Negative numbers not allowed: -4');
    });
    /// Test for handling negative numbers
    test('Handle multiple negative numbers ', (){
      expect(stringCalculator.addNumbersFromString('1,-2,-5,6'), 'Negative numbers not allowed: -2,-5');
    });

  });

}