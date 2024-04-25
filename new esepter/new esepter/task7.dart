import 'dart:io';

void main() {
  double averageA = averageInRange(1, 1000);
  print("Average of integers from 1 to 1000: $averageA");

  stdout.write("Enter the value of a: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the value of b: ");
  int b = int.parse(stdin.readLineSync()!);

  double averageB = averageInRange(a, b);
  print("Average of integers from $a to $b: $averageB");
}

double averageInRange(int start, int end) => (start + end) / 2.0;
