void main() {
  Student s = Student.primary(name: 'zain');

  Student std = Student('secondary', name: 'ahmad');
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
