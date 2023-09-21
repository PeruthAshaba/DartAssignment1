//Write a dart program to get the difference between a given number & 17, 
//if the number is greater than 17 return double the absolute difference.
import 'dart:io';

void main() {
  stdout.writeln('Enter a number: ');
  final number = double.parse(stdin.readLineSync()!);

  final difference = calculateDifference(number);

  print('The difference is: $difference');
}

double calculateDifference(double number) {
  final absoluteDifference = (number - 17).abs();

  if (number > 17) {
    return 2 * absoluteDifference;
  } else {
    return absoluteDifference;
  }
}
