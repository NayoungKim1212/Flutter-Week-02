import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 맨 처음 시작할 때
      debugShowCheckedModeBanner: false,
      home: HomePage(), // HomePage를 home이라는 매개 변수에 저장
    );
  }
}
