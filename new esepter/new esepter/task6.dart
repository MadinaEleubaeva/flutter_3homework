import 'dart:io';

void main() {
  int sumA = sumIntegersInRange(100, 500);
  print("Sum of integers from 100 to 500: $sumA");

  stdout.write("Enter the value of a: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the value of b: ");
  int b = int.parse(stdin.readLineSync()!);

  int sumB = sumIntegersInRange(a, b);
  print("Sum of integers from $a to $b: $sumB");
}

int sumIntegersInRange(int start, int end) =>
    List.generate(end - start + 1, (index) => index + start)
        .reduce((a, b) => a + b);
