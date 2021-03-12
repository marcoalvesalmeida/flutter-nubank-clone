import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {
  final String title;

  const CardApp({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
