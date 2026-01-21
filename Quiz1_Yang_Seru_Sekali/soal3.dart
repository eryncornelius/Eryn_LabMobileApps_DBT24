import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int angka = random.nextInt(100) + 1;
  int percobaan = 0;

  while (true) {
    stdout.write("give me a number (1-100): ");
    int tebakan = int.parse(stdin.readLineSync()!);
    percobaan++;

    if (tebakan < angka) {
      print("too small");
    } else if (tebakan > angka) {
      print("too big");
    } else {
      print("correct!");
      break;
    }
  }

  print("Jumlah percobaan: $percobaan");
}