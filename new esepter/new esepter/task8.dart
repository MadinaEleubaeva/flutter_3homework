import 'dart:math';

void main() {
  int n = 8;
  double Num = 1;
  var i = 1;
  while (i <= n) {
    Num = Num + (1 / pow(3, i));
    i++;
  }
  print(Num);
}
