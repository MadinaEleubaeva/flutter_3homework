import 'dart:io';

void main() {
  stdout.write("Enter a six-digit number: ");
  int number = int.parse(stdin.readLineSync()!);

  print((number < 100000 || number > 999999)
      ? "$number is not a lucky number."
      : "${isLucky(number) ? '$number is a lucky number.' : '$number is not a lucky number.'}");
}

bool isLucky(int number) {
  String numberString = number.toString();
  int firstHalfSum = numberString
      .substring(0, 3)
      .split('')
      .map(int.parse)
      .reduce((a, b) => a + b);
  int secondHalfSum = numberString
      .substring(3)
      .split('')
      .map(int.parse)
      .reduce((a, b) => a + b);
  return firstHalfSum == secondHalfSum;
}
