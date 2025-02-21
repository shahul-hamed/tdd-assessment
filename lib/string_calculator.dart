class StringCalculator {
  int addNumbersFromString(String input) {
    int sum = 0;
    List<String> numbers = input.split(',');
    /// iterate list to sum
    for(var number in numbers){
      final num = int.tryParse(number);
      if(num == null) {
        throw FormatException("invalid input");
      }
      sum+=num;
    }
    return sum;
  }
}