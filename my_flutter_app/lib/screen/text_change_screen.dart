import 'package:flutter/material.dart';

class TextChangeScreen extends StatefulWidget {
  @override
  _TextChangeScreenState createState() => _TextChangeScreenState();
}

class _TextChangeScreenState extends State<TextChangeScreen> {
  String _displayText = '初期テキスト';

  void _changeText() {
    setState(() {
      _displayText = 'テキストが変更されました！';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('テキスト変更')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_displayText, style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeText,
              child: Text('テキストを変更'),
            ),
          ],
        ),
      ),
    );
  }
}
