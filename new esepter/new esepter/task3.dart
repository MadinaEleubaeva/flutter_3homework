import 'dart:io';

void main() {
  stdout.write("Enter a natural number (up to 9999): ");
  int n = int.parse(stdin.readLineSync()!);

  print(n < 0 || n > 9999
      ? "Invalid input! Please enter a natural number up to 9999."
      : "${n.toString().split('').reversed.join('') == n.toString() ? '$n is a palindrome.' : '$n is not a palindrome.'}");
}
