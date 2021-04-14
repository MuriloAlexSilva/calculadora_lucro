import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final double topValue;
  final double leftValue;
  final String text;
  CardCustom({this.topValue, this.leftValue, this.text});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topValue,
      left: leftValue,
      child: Opacity(
        opacity: 0.8,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 80,
            width: 200,
            color: Colors.brown[100],
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
