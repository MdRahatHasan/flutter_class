import 'dart:io';

abstract class Student {
  String name;
  int rollNumber;
  double marks;

  Student(this.name, this.rollNumber, this.marks);
  void printResult();
}

class StudentResult implements Student {
  @override
  String name;
  @override
  int rollNumber;
  @override
  double marks;
  StudentResult(this.name, this.rollNumber, this.marks);
  @override
  void printResult() {
    print('Student Name: $name');
    print('Roll Number: $rollNumber');
    print('marks: $marks');
  }
}

void main() {
  print('Enter Student Name:');
  String name = stdin.readLineSync()!;
  print('Enter Student Roll Number:');
  int rollNumber = int.parse(stdin.readLineSync()!);
  print('Enter Marks Obtained:');
  double marks = double.parse(stdin.readLineSync()!);
  Student student;
  student = StudentResult(name, rollNumber, marks);
  student.printResult();
}
