import 'data_collections.dart';
import 'kabour.dart';

void main() {
  // Student s = Student.primary(name: 'zain');
  var res = Kabour.kabourFun('flutter');
  var res1 = Kabour.conv(input: 'xyz');
  // Student std = Student('secondary', name: 'ahmad');

  // User u = User();
  // u.level;
}

class Student {
  String name;
  String className;
  int id;
  final pin;

  Student(this.className, {this.id = -1, this.name, this.pin});

  Student.primary({String name, int id})
      : this('primary', id: id ?? -1, name: name);

//  const Student(this.pin); // edit attrs to final and uncomment this line

}
