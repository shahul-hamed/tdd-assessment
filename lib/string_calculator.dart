class StringCalculator {
  dynamic addNumbersFromString(String input) {
    /// sum if input is not empty
    if(input.isNotEmpty) {
      List<String> numbers = input.split(RegExp(r'[,\n]')); /// split comma or new line characters
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
  print("negative nos-> $negativeNumbers");
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
    // print("negative nos-> $negativeNumbers");

  }
  /// if string is having negative numbers then throw exception with message
  if(negativeNumbers.isNotEmpty) {
    throw FormatException("Negative numbers not allowed: ${negativeNumbers.join(',')}");
  }
  return sum;
}