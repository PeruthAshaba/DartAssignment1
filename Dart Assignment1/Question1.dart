//Write a dart program which accepts a sequence of comma separated numbers from the user& generates a list and a tuple from those numbers.
import 'dart:io';
void main() {
  print("Enter a sequence of comma-separated numbers:");
  String input = stdin.readLineSync()!;
  
  List<String> numStrings = input.split(',');
  List<int> numbers = [];

  for (var numString in numStrings) {
    try {
      int number = int.parse(numString.trim());
      numbers.add(number);
    } catch (e) {
      print("Invalid input: $numString is not a valid number.");
    }
  }

  print("List of numbers: $numbers");

  if (numbers.length >= 2) {
    var tuple = Tuple(numbers[0], numbers[1]);
    print("Tuple: $tuple");
  } else {
    print("Tuple requires at least 2 numbers.");
  }
}

class Tuple {
  final int first;
  final int second;

  Tuple(this.first, this.second);

  @override
  String toString() {
    return '($first, $second)';
  }
}
