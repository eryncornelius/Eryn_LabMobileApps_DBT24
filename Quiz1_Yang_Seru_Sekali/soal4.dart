import 'dart:io';

bool bilPrima(int n) {
  if (n <= 1) return false;

  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  stdout.write("Masukkan sebuah angka: ");
  int num = int.parse(stdin.readLineSync()!);

  if (bilPrima(num)) {
    print("$num adalah bilangan prima");
  } else {
    print("$num bukan bilangan prima");
  }
}