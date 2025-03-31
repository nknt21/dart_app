import 'package:flutter/material.dart';
import 'text_change_screen.dart';
import 'api_request_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ホーム画面')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('テキスト変更画面へ'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextChangeScreen()),
                );
              },
            ),
            ElevatedButton(
              child: Text('APIリクエスト画面へ'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ApiRequestScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
