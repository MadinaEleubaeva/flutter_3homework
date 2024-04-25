import 'dart:io';

void main() {
  stdout.write("Enter a natural number (up to 9999): ");
  int n = int.parse(stdin.readLineSync()!);

  print(n < 0 || n > 9999
      ? "Invalid input! Please enter a natural number up to 9999."
      : "${checkThreeIdenticalDigits(n) ? '$n contains exactly three identical digits.' : '$n does not contain exactly three identical digits.'}");
}

bool checkThreeIdenticalDigits(int number) {
  var counts = <String, int>{};

  for (var digit in number.toString().split('')) {
    counts[digit] = (counts[digit] ?? 0) + 1;
  }

  return counts.containsValue(3);
}
