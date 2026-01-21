import 'dart:io';
import 'dart:math';

void main() {
  game();
}
void game() {
  stdout.write("Gunting/Batu/Kertas (G/B/K): ");
  String? player1 = stdin.readLineSync();
  String? player2;
  List choices = ['G', 'B', 'K'];
  Random rand = Random();
  int index = rand.nextInt(3);
  player2 = choices[index];
  print("Player 2 memilih: $player2");
  if (player1 == player2) {
    print("Seri!");
  } else if ((player1 == 'G' && player2 == 'K') ||
      (player1 == 'B' && player2 == 'G') ||
      (player1 == 'K' && player2 == 'B')) {
    print("Player 1 Menang!");
  } else if ((player1 == 'G' && player2 == 'B') ||
      (player1 == 'B' && player2 == 'K') ||
      (player1 == 'K' && player2 == 'G')) {
    print("Player 2 Menang!");
  } else {
    print("Invalid");
  }
}