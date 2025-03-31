import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '分割したコードの例',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),  // ホーム画面を起動
    );
  }
}
