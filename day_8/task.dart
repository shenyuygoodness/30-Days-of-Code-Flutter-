import 'dart:io';

void ageLess(age) {
  try {
    if (age < 18) {
      throw Exception('Too Young');
    }
  } catch (exception) {
    print(exception);
  }
}

void ageGreater(age) {
  try {
    if (age > 99) {
      throw Exception('Too Old');
    }
  } catch (exception) {
    print(exception);
  } finally {
    print('All done');
  }
}

void main() {
  print('Enter your age');
  String? ageGiven = stdin.readLineSync();
  int age = int.parse(ageGiven!);

  ageLess(age);
  ageGreater(age);
}
