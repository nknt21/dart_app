import 'package:flutter/material.dart';
import '../services/api_service.dart'; // API処理を別ファイルに分離

class ApiRequestScreen extends StatefulWidget {
  @override
  _ApiRequestScreenState createState() => _ApiRequestScreenState();
}

class _ApiRequestScreenState extends State<ApiRequestScreen> {
  String _data = 'データなし';

  void fetchData() async {
    String result = await ApiService.fetchData();
    setState(() {
      _data = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('APIリクエスト')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_data, style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: fetchData,
              child: Text('データ取得'),
            ),
          ],
        ),
      ),
    );
  }
}
