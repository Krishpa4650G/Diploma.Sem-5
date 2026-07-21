//W.A.P. to insert double into List and display in terminal and do sum of all numbers and print it with 2 decimal only. Ex: Total = 22.39998 => 22.40

import 'dart:io';

void main() {
  print("Enter the number of items you want to add in the list:");
  int n = int.parse(stdin.readLineSync()!);

  List<double> lst = [];

  for (int i = 0; i < n; i++) {
    print("Enter value ${i + 1}:");
    double num = double.parse(stdin.readLineSync()!);
    lst.add(num);
  }

  print("List of double numbers is: $lst");

  double total = 0;

  for (double i in lst) {
    total += i;
  }

  // Alternative:
  // double total = lst.reduce((a, b) => a + b);

  print("Total of list of double numbers is: ${total.toStringAsFixed(2)}");
}