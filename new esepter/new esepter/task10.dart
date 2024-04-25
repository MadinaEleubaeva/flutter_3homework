import 'dart:io';

void main() {
  int sum = 0;
  int countEven = 0;

  stdout.write("Enter the value of x: ");
  int x = int.parse(stdin.readLineSync()!);

  stdout.write("Enter a sequence of integers (ending with 0): ");

  int number;
  do {
    number = int.parse(stdin.readLineSync()!);
    if (number > x) {
      sum += number;
    }
    if (number % 2 == 0) {
      countEven++;
    }
  } while (number != 0);

  print("a) Sum of numbers greater than $x: $sum");
  print("b) Count of even numbers in the sequence: $countEven");
}
