import 'package:flutter/material.dart';

class booklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 200,
            width: 200,
            child: Image.asset(
              "assets/images/books/B1.png",
              fit: BoxFit.fill,
            ))
      ],
    );
  }
}
