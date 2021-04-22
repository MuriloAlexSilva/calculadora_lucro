import 'package:flutter/material.dart';
import 'app/views/home_page.dart';
import 'app/views/margem_instagram.dart';
import 'app/views/margem_meLi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.brown[700]),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/margemMeLi': (context) => MargemMeLiPage(),
        '/margemInstagram': (context) => MargemInstagramPage()
      },
    );
  }
}
