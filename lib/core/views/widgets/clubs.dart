import 'package:flutter/material.dart';

class clubs extends StatelessWidget {
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
              height: 200,
              width: 400,
              child: Image.asset(
                "assets/images/club.jpg",
                fit: BoxFit.fill,
              )),
          Positioned(
              child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 255, 255, 255).withOpacity(0),
                  Color.fromARGB(255, 0, 0, 0).withOpacity(0.8),
                ],
              ),
            ),
            height: 200,
            width: 400,
          )),
          Positioned(
              top: 150,
              right: 15,
              child: Row(
                children: [
                  Text(
                    "نادي رواق القراءة",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          Positioned(
              top: 150,
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
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          Positioned(
              top: 20,
              left: 10,
              child: Row(
                children: [
                  Icon(
                    Icons.group,
                    color: Colors.white,
                  ),
                  Text(
                    "50",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          Positioned(
              top: 150,
              left: 150,
              child: Row(
                children: [
                  Icon(
                    Icons.menu_book_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "أدبية",
                    style: TextStyle(
                        fontSize: 20,
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
