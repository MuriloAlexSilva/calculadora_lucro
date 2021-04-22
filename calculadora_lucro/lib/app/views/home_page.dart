import 'package:calculadora_lucro/app/components/card_custom.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Margem'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Opacity(
              opacity: 0.7,
              child: Image.asset(
                'images/background.jpg',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            CardCustom(
              route: '/margemInstagram',
              leftValue: 110,
              topValue: 30,
              text: 'Instagram',
            ),
            CardCustom(
              route: '/margemMeLi',
              leftValue: 110,
              topValue: 120,
              text: 'Mercado Livre',
            ),
          ],
        ),
      ),
    );
  }
}
