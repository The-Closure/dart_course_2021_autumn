import 'package:dart_course_2021_autumn/dart_course_2021_autumn.dart'
    as dart_course_2021_autumn;

void main() {
  Student student = Student();
  student.printInfo();
}

class Student {
  String _name;
  int age;
  String gender;
  int id;
  void printInfo() {
    print('name : $sname');
  }

  String get sname => _name;
  set sname(str) => _name = str;
}
