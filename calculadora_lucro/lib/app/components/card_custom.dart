import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final double topValue;
  final double leftValue;
  final String text;
  final String route;
  CardCustom({this.topValue, this.leftValue, this.text, this.route});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topValue,
      left: leftValue,
      child: Opacity(
        opacity: 1.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, route),
            child: Container(
              height: 80,
              width: 180,
              color: Colors.brown[400],
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
