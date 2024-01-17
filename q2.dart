import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<String> input = stdin.readLineSync()!.split(' ');
  List<int> numbers = input.map((number) => int.parse(number)).toList();

  int maxNumber = numbers[0];

  for (int i = 1; i < n; i++) {
    if (numbers[i] > maxNumber) {
      maxNumber = numbers[i];
    }
  }

  print(maxNumber);
}
