import 'dart:io';
import 'dart:core';

void main() {
  final list = <int>[];
  int sum = 0;
  print("Enter number of list items");

  int n = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < n; i++) {
    int? input;
    do {
      input = int.tryParse(stdin.readLineSync() ?? '');
    } while (input == null);
    list.add(input.abs());
  }
  for (int i in list) {
    sum = sum + i;
  }
  print(sum);
}
