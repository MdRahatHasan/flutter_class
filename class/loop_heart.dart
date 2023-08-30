import 'dart:io';

void main() {
  int i, j;
  for (i = 0; i <= 2; i++) {
    for (j = 1; j <= 17; j++) {
      if ((j >= 3 - i && j <= 6 + i) || (j >= 12 - i && j <= 15 + i)) {
        stdout.write('*');
      } else {
        stdout.write(' ');
      }
    }
    stdout.write('\n');
  }
  for (i = 0; i < 9; i++) {
    for (j = 1; j <= 17; j++) {
      if (j >= i + 1 && j <= 17 - i) {
        stdout.write('*');
      } else {
        stdout.write(' ');
      }
    }
    stdout.write('\n');
  }
}



// void main() {
//   printHeart();
// }

// void printHeart() {
//   for (int row = 0; row < 6; row++) {
//     for (int col = 0; col < 7; col++) {
//       if ((row == 0 && col % 3 != 0) ||
//           (row == 1 && col % 3 == 0) ||
//           (row - col == 2) ||
//           (row + col == 8)) {
//         // Print '*' if condition is true, otherwise print a space
//         stdout.write('*');
//       } else {
//         stdout.write(' ');
//       }
//     }
//     stdout.write('\n');
//   }
// }
