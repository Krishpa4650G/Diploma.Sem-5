// W.A.P. to insert Strings into List and display in terminal.

import 'dart:io';
void main() {
  print("Enter the number of strings you want to enter in the list:");
  int n = int.parse(stdin.readLineSync()!);

  List<String> lst = [];

  for (int i = 0; i < n; i++) {
    print("Enter string ${i + 1}:");
    String str = stdin.readLineSync()!;
    lst.add(str);
  }

  print("List of strings is: $lst");
}