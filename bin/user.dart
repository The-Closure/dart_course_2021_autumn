class User {
  String name;
  int _level;
  User({this.name});
  String get level {
    if (_level == 0) {
      return 'ADMIN';
    } else if (_level == 1) {
      return 'USER';
    } else if (_level == 2) {
      return 'GUEST';
    } else {
      return 'HACKER';
    }
  }

  User setLevel({String level}) {
    this.level = level;
    return this;
  }

  set level(String level) {
    if (level.toLowerCase() == 'admin')
      _level = 0;
    else if (level.toLowerCase() == 'user')
      _level = 1;
    else if (level.toLowerCase() == 'guest') _level = 2;
  }
}
