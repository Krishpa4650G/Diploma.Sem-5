//W.A.P. to insert int numbers into List and display in terminal.

import "dart:io";

void main() {
  List<int> lst = [];
  print("Enter the number of elements you want to add in list:");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    print("Enter ${i + 1} number:");
    int num = int.parse(stdin.readLineSync()!);
    lst.add(num);
  }
  print("List of numbers is: $lst");
}