import 'dart:io';

void printNum(int maxNum) {
  // Creating function
  for (int i = 1; i <= maxNum; i++) {
    if (i == maxNum / 2) {
      print("\n Half way there");
    } else
      print("\n $i");
  }
  // returning value result
}

int maxNum() {
  String? num = stdin.readLineSync();
  int n = int.parse(num!);
  return n;
}

void main() {
  print('Enter the maximum number \n');
  int num = maxNum();
  printNum(num);
}
