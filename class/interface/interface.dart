// import 'dart:io';

void main() {
  Result result = Result();
  result.studentName('rahat');
  result.studentRoll('416116');
  result.studentReg('123123');
  result.studentClass('CSC');
}

abstract class Input {
  void userInput();
}

class Student {
  void studentName(String name) {}
  void studentRoll(String roll) {}
  void studentReg(String reg) {}
}

class StudentClass {
  void studentClass(String sClass) {}
}

class Result implements Input, Student, StudentClass {
  @override
  void userInput() {
    // stdout.writeln('Enter your Name:');
    // String name = stdin.readLineSync()!;
    // stdout.writeln('Enter your roll:');
    // String roll = stdin.readLineSync()!;
    // stdout.writeln('Enter your Class:');
    // String sClass = stdin.readLineSync()!;
    // stdout.writeln('Enter your Register Number');
    // String reg = stdin.readLineSync()!;
  }

  @override
  void studentName(String name) {
    print(name);
  }

  @override
  void studentRoll(String roll) {
    print(roll);
  }

  @override
  void studentReg(String reg) {
    print(reg);
  }

  @override
  void studentClass(String sClass) {
    print(sClass);
  }
}
