import 'dart:math';

void main() {
  print('start'); //1
  Future<int> a = futureInt(); //3

  a.then((value) {
    print(value);
    return value;
  }, onError: (e) {
    print('error');
  });
  print('after future fun'); //2

  Stream<int> stream = seqAsyncValues();
  stream.listen((value) {
    print(value);
  }, onDone: () {
    print('done');
  }, onError: (e) {
    print('error occured on $e');
  }, cancelOnError: false);
}

Future<int> futureInt() {
  return Future.delayed(Duration(seconds: 1), () async {
    int a = await Random().nextInt(10);
    if (a < 5)
      throw Exception();
    else
      return a;
  });
}

Stream<int> seqAsyncValues() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    int a = await Random().nextInt(10);
    String s = 'testtest';
    s[a];
    yield i;
  }
}
