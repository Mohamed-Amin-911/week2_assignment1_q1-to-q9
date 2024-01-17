import 'dart:io';
import 'dart:core';

void main() {
  final list = <String>[];
  print("Enter number of list items");
  int n = int.parse(stdin.readLineSync()!);
  print("Enter words");
  for (var i = 0; i < n; i++) {
    String? input;
    do {
      input = stdin.readLineSync() ?? '';
    } while (input == "");
    list.add(input);
  }

  for (int i = 0; i < list.length - 1; i++) {
    for (int j = i + 1; j < list.length; j++)
      if (list[i] == list[j]) {
        list.remove(list[j]);
      }
  }
  print(list);
}
