import 'dart:io';

void main() {
  stdout.write('Enter Range:');
  int range = int.parse(stdin.readLineSync()!);
  int sum = 0;
  print(range);
  for (int i = 0; i <= range; i++) {
    sum += i;
  }
  stdout.write('Sum of 1 to $range = $sum');
}
