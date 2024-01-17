import 'dart:io';

void main() {
  print("Enter number");
  int n = int.parse(stdin.readLineSync()!);

  print("fibonacci of this number: ${fibonacci(n)}");
}

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}
