import 'dart:convert';

import 'package:http/http.dart' as http;

void main() {
  requestClass.getData().then((value) {
    print(value);
  });
}

class requestClass {
  static Future<String> getData() async {
    http.Response response = await http.get(
        Uri.parse('http://164.68.96.30:7070/v2/api/posts/getpost?postID=200'));
    print(response.statusCode);
    Map<String, dynamic> data = json.decode(response.body) as Map;
    print(data['likeState']);
    return response.body;
  }
}
