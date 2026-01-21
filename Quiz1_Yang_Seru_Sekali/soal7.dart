void main() {
  List<int> a = [1, 3, 5, 7];
  List<int> b = [2, 4, 6, 8];
  List<int> hasil = [...a, ...b];

  hasil.sort();

  print("$hasil");

  int secmaxnum = hasil[hasil.length - 2];

  print("Output: $secmaxnum");
}