import 'dart:io';
import 'dart:core';

void main() {
  final list = <double>[];
  final intList = <int>[];
  final doubleList = <double>[];
  print("Enter number of list items");
  int n = int.parse(stdin.readLineSync()!);
  print("Enter numbers");
  for (var i = 0; i < n; i++) {
    double? input;
    do {
      input = double.parse(stdin.readLineSync() ?? '');
    } while (input == false);
    list.add(input);
  }

  for (int i = 0; i < list.length; i++) {
    if (list[i] % 1 == 0) {
      intList.add((list[i]).toInt());
    } else if (list[i] % 1 != 0) {
      doubleList.add(list[i]);
    }
  }
  print("int list: $intList");
  print("double lsit: $doubleList");
}
