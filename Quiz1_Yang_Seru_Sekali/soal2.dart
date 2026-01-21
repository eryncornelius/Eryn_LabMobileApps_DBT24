import 'dart:io';
import 'dart:math';

void main() {
  List<String> pilihan = ['G', 'B', 'K'];
  Random random = Random();

  stdout.write("Player 1 (G/B/K): ");
  String player1 = stdin.readLineSync()!.toUpperCase();

  String player2 = pilihan[random.nextInt(3)];
  print("Player 2: $player2");

  if (player1 == player2) {
    print("Seri!");
  } else if (
      (player1 == 'G' && player2 == 'K') ||
      (player1 == 'B' && player2 == 'G') ||
      (player1 == 'K' && player2 == 'B')) {
    print("Player 1 Menang");
  } else if (
      (player1 == 'G' && player2 == 'B') ||
      (player1 == 'B' && player2 == 'K') ||
      (player1 == 'K' && player2 == 'G')) {
    print("Player 2 Menang");
  } else {
    print("Invalid");
  }
}
