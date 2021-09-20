import 'user.dart';

class DataCollections {
  static List<User> users = List.filled(4, User(name: 'valid'));
  static List<String> names = ['ahmed', 'yasser', 'khaled', 'kabour'];
  static void init() {
    for (var item in users) {
      item.name = 'ahmed';
      print('${item.name}');
    }
    users.map((e) => e.setLevel(level: 'admin')).toList(growable: true);
    for (var i = 0; i < users.length; i++) {
      users[i].name = names[i];
    }
  }
}
