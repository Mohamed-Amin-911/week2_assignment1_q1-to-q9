import 'dart:io';

void main() {
  final list = <int>[];
  print("Enter number of list items");
  int n = int.parse(stdin.readLineSync()!);
  print("Enter list items");
  for (var i = 0; i < n; i++) {
    int? input;
    do {
      input = int.tryParse(stdin.readLineSync() ?? '');
    } while (input == null);
    list.add(input);
  }
  list.sort();
  print(list);
}
