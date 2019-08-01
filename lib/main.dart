import 'package:flutter/material.dart';
import 'pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '路由动画',
      theme: ThemeData.light(),
      home: FirstPage(),
    );
  }
}
