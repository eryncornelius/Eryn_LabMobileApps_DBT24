import 'dart:io';

class Ujian {
  int totalNilai = 0;
  int totalMahasiswa = 0;

  void tambahNilai(int nilai) {
    totalNilai += nilai;
    totalMahasiswa++;
  }

  double hitungRataRata() {
    return totalNilai / totalMahasiswa;
  }
}

void main() {
  Ujian ujian = Ujian();

  for (int i = 1; i <= 3; i++) {
    stdout.write("Masukkan nama student $i: ");
    stdin.readLineSync();

    stdout.write("Masukkan nilai student $i: ");
    int nilai = int.parse(stdin.readLineSync()!);

    ujian.tambahNilai(nilai);
  }

  print("Rata-rata nilai: ${ujian.hitungRataRata()}");
}