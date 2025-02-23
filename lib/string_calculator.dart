class StringCalculator {
  dynamic addNumbersFromString(String input) {
    /// sum if input is not empty
    if(input.isNotEmpty) {
      List<String> numbers = [];
      /// handle delimiter
      if(input.startsWith('//')) {
        final delimiterLineEndIndex = input.indexOf('\n');
        final delimiter = input.substring(
            2, delimiterLineEndIndex); // Extract the custom delimiter.
        input =
            input.substring(delimiterLineEndIndex + 1);
        numbers = input.split(delimiter);
      }
      else {
        numbers = input.split(RegExp(r'[,\n]')); /// split comma or new line characters
      }
      try{
        return _addNumbers(numbers);
      }
      catch(e){
        if (e is FormatException) {
          // Handle the FormatException, for example, return a message
          return e.message;
        }
      }

    }
    return 0;
  }
}

int _addNumbers(List<String> numbers) {
  int sum = 0;
  List<int> negativeNumbers = [];

  /// iterate list of numbers to sum
  for (var number in numbers) {
    final num = int.tryParse(number);
    if (num == null) {
      throw const FormatException("invalid input");
    }
    /// check if number is negative or not
    if(num < 0){
      /// collect negative numbers
      negativeNumbers.add(num);
    }
    else {
      sum += num;
    }

  }
  /// if string is having negative numbers then throw exception with message
  if(negativeNumbers.isNotEmpty) {
    throw FormatException("Negative numbers not allowed: ${negativeNumbers.join(',')}");
  }
  return sum;
}