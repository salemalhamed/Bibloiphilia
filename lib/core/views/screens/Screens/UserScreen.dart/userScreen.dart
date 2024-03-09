import 'package:biblophila2/core/views/widgets/Ubook.dart';
import 'package:biblophila2/core/views/widgets/UserEv.dart';
import 'package:biblophila2/core/views/widgets/bottomNavigation.dart';
import 'package:biblophila2/core/views/widgets/clubs.dart';
import 'package:biblophila2/core/views/widgets/evnts.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.logout),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 110),
                            child: Center(
                              child: Container(
                                height: 125,
                                width: 125,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/profile.png"),
                                ),
                              ),
                            ),
                          ),
                          Icon(Icons.settings),
                        ],
                      ),
                      Text(
                        "سالم",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "فعالياتي",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(23, 158, 158, 158),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Uevnts(),
                          SizedBox(
                            height: 5,
                          ),
                          Uevnts(),
                          SizedBox(
                            height: 5,
                          ),
                          Uevnts(),
                          SizedBox(
                            height: 5,
                          ),
                          Uevnts(),
                          Uevnts()
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "مجتمعاتي",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          clubs(),
                          SizedBox(
                            height: 5,
                          ),
                          clubs(),
                          SizedBox(
                            height: 5,
                          ),
                          clubs(),
                          SizedBox(
                            height: 5,
                          ),
                          clubs(),
                          clubs()
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "كتبي",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(23, 158, 158, 158),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Ubooklist(),
                          SizedBox(
                            height: 5,
                          ),
                          Ubooklist(),
                          SizedBox(
                            height: 5,
                          ),
                          Ubooklist(),
                          SizedBox(
                            height: 5,
                          ),
                          Ubooklist(),
                          Uevnts()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: SizedBox(
              width: double.infinity,
              height: 60,
              child: bottomnavigtor(),
            ),
          ),
        ));
  }
}
