import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  var digits = input.split("").map(int.parse).toList();

  int count3 = digits.where((digit) => digit == 3).length;
  int lastDigitCount = digits.where((digit) => digit == digits.last).length;
  int evenCount = digits.where((digit) => digit % 2 == 0).length;
  int sumGreaterThan5 =
      digits.where((digit) => digit > 5).fold(0, (prev, digit) => prev + digit);
  int productGreaterThan7 =
      digits.where((digit) => digit > 7).fold(1, (prev, digit) => prev * digit);
  int count05 = digits.where((digit) => digit == 0 || digit == 5).length;

  print("a) количество цифр 3 в нем: $count3");
  print("б) сколько раз в нем встречается последняя цифра: $lastDigitCount");
  print("в) количество четных цифр в нем: $evenCount");
  print("г) сумму его цифр, больших пяти: $sumGreaterThan5");
  print("д) произведение его цифр, больших семи: $productGreaterThan7");
  print("е) сколько раз в нем встречаются цифры 0 и 5 (всего): $count05");
}
