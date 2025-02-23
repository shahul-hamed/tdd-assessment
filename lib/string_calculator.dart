class StringCalculator {
  int addNumbersFromString(String input) {
    int sum = 0;
    /// sum if input is not empty
    if(input.isNotEmpty) {
      List<String> numbers = input.split(RegExp(r'[,\n]'));
     sum =  addNumbers(numbers);
    }
    return sum;
  }
}

int addNumbers(List<String> numbers) {
  int sum = 0;
  /// iterate list to sum
  for (var number in numbers) {
    final num = int.tryParse(number);
    if (num == null) {
      throw const FormatException("invalid input");
    }
    sum += num;
  }
  return sum;
}