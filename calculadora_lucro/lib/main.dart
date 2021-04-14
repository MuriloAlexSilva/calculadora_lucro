import 'package:calculadora_lucro/app/views/margem_desejada.dart';
import 'package:calculadora_lucro/app/views/margem_obtida.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/margemObtida': (context) => MargemObtidaPage(),
        '/margemDesejada': (context) => MargemDesejadaPage()
      },
    );
  }
}
