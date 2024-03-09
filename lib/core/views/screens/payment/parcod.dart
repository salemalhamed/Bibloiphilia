import 'package:flutter/material.dart';

class ParcodeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return secondstate();
  }
}

class secondstate extends State {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: 420,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Image.asset("assets/images/par.jpg")],
        ),
      ),
    );
  }
}
