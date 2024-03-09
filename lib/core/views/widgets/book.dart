import 'package:flutter/material.dart';

class book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 170,
            width: 170,
            child: Image.asset(
              "assets/images/books/B1.png",
              fit: BoxFit.fill,
            ))
      ],
    );
  }
}
