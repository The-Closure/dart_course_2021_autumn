class Collections {
  static void run() {
    Map<String, int> map = {'first': 1, 'second': 2, 'second': 3};
    map.forEach((key, value) {});
    map.map<int, String>((key, value) {
      int c;
    });
    List degrees = [1, 2, 4, 5, 6, 6, 7];
    List<int> intDegrees = [1, 2, 4, 5, 6, 6, 7];
    degrees.add(1);
    degrees.remove(1);
    intDegrees.removeWhere((element) => element >= 6);

    List<String> stringDegrees =
        intDegrees.map<String>((e) => null).toList(growable: true);

    intDegrees.addAll([1, 2, 4, 5, 7, 7]);

    intDegrees.any((element) => element > 7);

    List<int> badDegrees =
        intDegrees.where((element) => element <= 4).toList(growable: true);

    intDegrees.indexWhere((element) => element == 1, 2);

    intDegrees.forEach((element) {
      print('$element');
    });
  }
}
