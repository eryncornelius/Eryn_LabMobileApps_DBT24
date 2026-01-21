void main() {
  bilPrima() {
    int n = 1;
    List prima = [];
    for (int i = 2; i <= n; i++) {
      bool isPrima = true;
      for (int j = 2; j <= i / 2; j++) {
        if (i % j == 0) {
          isPrima = false;
          break;
        }
      }
      if (isPrima) {
        prima.add(i);
      }
    }
    return prima;
  }
}