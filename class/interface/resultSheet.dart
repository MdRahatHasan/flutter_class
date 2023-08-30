import 'dart:io';

abstract class Student {
  String name;
  int rollNumber;
  double? marksObtained;

  Student(this.name, this.rollNumber);

  void inputMarks();
  void displayResult();
}

class StudentResult implements Student {
  @override
  String name;
  @override
  int rollNumber;
  @override
  double? marksObtained;

  StudentResult(this.name, this.rollNumber);

  @override
  void inputMarks() {
    print('Enter marks obtained by $name:');
    marksObtained = double.parse(stdin.readLineSync()!);
  }

  @override
  void displayResult() {
    print('Regular Student - $name');
    print('Roll Number: $rollNumber');
    print('Marks Obtained: $marksObtained');
  }
}

void main() {
  print('Enter student name:');
  String name = stdin.readLineSync()!;

  print('Enter roll number:');
  int rollNumber = int.parse(stdin.readLineSync()!);

  Student student;

  student = StudentResult(name, rollNumber);

  student.inputMarks();
  student.displayResult();
}
