import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static Future<String> fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return jsonData['title'];
    } else {
      return 'データ取得失敗';
    }
  }
}
