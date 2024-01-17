import 'dart:io';

void main() {
  int userInput = 0;
  int password = 1999;
  while (userInput != password) {
    userInput = int.parse(stdin.readLineSync()!);
    if (userInput == password) {
      break;
    }
    if (userInput != password) {
      print("wrong");
    }
  }
  print("correct");
}
