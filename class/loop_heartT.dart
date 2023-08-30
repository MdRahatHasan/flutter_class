import 'dart:io';

void main() {
  int row, col;
  for (row = 0; row <= 2; row++) {
    for (col = 1; col <= 17; col++) {
      if (col >= 3 - row && col <= 6 + row ||
          col >= 12 - row && col <= 15 + row) {
        stdout.write('*');
      } else {
        stdout.write(" ");
      }
    }
    stdout.write('\n');
  }
  for (row = 0; row < 9; row++) {
    for (col = 1; col <= 17; col++) {
      if (col >= row + 1 && col <= 17 - row) {
        stdout.write('*');
      } else {
        stdout.write(' ');
      }
    }
    stdout.write('\n');
  }
}
