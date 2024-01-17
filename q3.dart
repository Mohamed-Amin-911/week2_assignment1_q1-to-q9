import 'dart:io';

void main() {
  final list = <int>[];

  int n = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < n; i++) {
    int? input;
    do {
      input = int.tryParse(stdin.readLineSync() ?? '');
    } while (input == null);
    list.add(input);
  }

  for (int i in list) {
    print(factorial(i));
  }
}

int factorial(int n) {
  if (n < 0) return -1;
  if (n == 0) return 1;
  return n * factorial(n - 1);
}
