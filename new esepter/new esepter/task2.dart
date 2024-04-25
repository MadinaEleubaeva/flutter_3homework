import 'dart:io';

void main() {
  stdout.write("Enter a three-digit number: ");
  var number = int.parse(stdin.readLineSync()!);

  var containsFourOrSeven = number.toString().contains(RegExp('[47]'));
  var containsThreeSixNine = number.toString().contains(RegExp('[369]'));

  stdout.write("Enter digit n: ");
  var n = int.parse(stdin.readLineSync()!);
  var containsDigitN = number.toString().contains(n.toString());

  print("a) Contains 4 or 7: $containsFourOrSeven");
  print("b) Contains 3, 6, or 9: $containsThreeSixNine");
  print("c) Contains digit n: $containsDigitN");
}
