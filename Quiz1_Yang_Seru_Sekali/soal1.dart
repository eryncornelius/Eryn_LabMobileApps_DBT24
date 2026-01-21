void main() {
  List a = [1,4,9,16,25,36,49,64,81,100];
  List b = a.where((item) => item % 2 == 0).toList();
  print(b);
}