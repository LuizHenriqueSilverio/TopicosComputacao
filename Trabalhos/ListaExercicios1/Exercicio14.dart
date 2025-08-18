import 'dart:io';

bool isLeapYear(int year) {
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      return year % 400 == 0;
    }
    return true;
  }
  return false;
}

void main() {
  stdout.write('Digite um ano: ');
  int year = int.parse(stdin.readLineSync()!);

  if (isLeapYear(year)) {
    print('$year é um ano bissexto.');
  } else {
    print('$year não é um ano bissexto.');
  }
}
