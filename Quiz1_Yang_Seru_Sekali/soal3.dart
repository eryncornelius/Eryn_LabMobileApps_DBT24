import 'dart:io';
import 'dart:math';

void main() {
  String? text = stdin.readLineSync();

  print("Masukkan tebakan angka antara 1-100: ");

  Random rand = Random();
  int index = rand.nextInt(100)+1;
  print("jawaban benar: $index");
  if (text != null) {
    int guess = int.parse(text);
    if (guess == index) {
      print("correct. $index is the number");
    } else {
      print("incorrect");
    }
  }
}