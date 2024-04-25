import 'dart:io';

void main() {
  stdout.write("Enter a two-digit number: ");
  var number = int.parse(stdin.readLineSync()!);

  var containsFourOrSeven = number.toString().contains(RegExp('[47]'));
  var containsThreeSixNine = number.toString().contains(RegExp('[369]'));

  stdout.write("Enter digit a: ");
  var a = int.parse(stdin.readLineSync()!);
  var containsDigitA = number.toString().contains(a.toString());

  print("a) Contains 4 or 7: $containsFourOrSeven");
  print("b) Contains 3, 6, or 9: $containsThreeSixNine");
  print("c) Contains digit a: $containsDigitA");
}
