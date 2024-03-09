import 'package:flutter/material.dart';

class Uevnts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
              clipBehavior: Clip.hardEdge,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              height: 100,
              width: 200,
              child: Image.asset(
                "assets/images/ev1.png",
                fit: BoxFit.fill,
              )),
          Positioned(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 255, 255, 255).withOpacity(0),
                  Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                ],
              ),
            ),
            height: 100,
            width: 200,
          )),
          Positioned(
              top: 65,
              right: 10,
              child: Text(
                "ماراثون القراءة",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: 65,
              left: 10,
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    "الرياض",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
