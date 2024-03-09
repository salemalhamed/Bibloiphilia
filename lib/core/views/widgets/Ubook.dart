import 'package:flutter/material.dart';

class Ubooklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 300,
            width: 200,
            child: Image.asset(
              "assets/images/books/B1.png",
              fit: BoxFit.fill,
            ))
      ],
    );
  }
}
