//Write a dart program to print a calendar of a given month and year.
import 'dart:io';

void main() {
  stdout.writeln('Enter month:');//prompt the user to enter the month
  final month = int.parse(stdin.readLineSync()!);
  stdout.writeln('Enter year:');//prompt the user to write the year
  final year = int.parse(stdin.readLineSync()!);
  print('The calendar is of Month: $month and Year: $year');
}