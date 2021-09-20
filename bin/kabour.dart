class Kabour {
  static String kabourFun(String name) {
    var res = '';
    for (var i = 0; i < name.length; i++) {
      if (i % 2 == 0) {
        res = res + name[i].toUpperCase(); // res += name[i].toUpperCase();
      } else {
        res = res + name[i].toLowerCase();
      }
    }
    return res;
  }

  static String conv({String input}) {
    var result = input.split('');
    var res = '';
    var v = result
        .map((e) => String.fromCharCode(e.codeUnitAt(0) + 3))
        .toList(growable: true);
    v.forEach((element) => res = res + element);
    return res;
  }
}
