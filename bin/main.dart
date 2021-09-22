import 'package:http/http.dart' as http;

void main() {
  requestClass.getData().then((value) {
    print(value);
  });
}

class requestClass {
  static Future<String> getData() async {
    var a = 3;
    String date = '';
    http.Response response = await http.get(Uri.parse(
        'http://localhost:8080/api/v3/mirror/vj6j6spd0ibogcfr3mjan1jqp4/pics'));
    print(response.statusCode);
    return response.body;
  }
}
