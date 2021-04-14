import 'package:flutter/material.dart';
import 'app/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.brown[700]),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
