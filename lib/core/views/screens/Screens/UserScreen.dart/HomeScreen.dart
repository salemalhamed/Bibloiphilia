import 'package:biblophila2/core/views/widgets/book.dart';
import 'package:biblophila2/core/views/widgets/bottomNavigation.dart';
import 'package:biblophila2/core/views/widgets/clubs.dart';
import 'package:biblophila2/core/views/widgets/evnts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
          child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF9327d5),
                              Color.fromARGB(255, 255, 255, 255)
                                  .withOpacity(0.8),
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      height: 125,
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 15),
                              child: Row(
                                children: [
                                  Text(
                                    "أهلا سالم, الرياض ",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  Icon(
                                    Icons.notification_add,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(79, 67, 67, 67),
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.search,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "البحث",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              "الكتب المقترحة لك",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                "المزيد",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF9327d5),
                                ),
                              )),
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: Color(0xFF9327d5),
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [book(), book(), book(), book(), book()],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              "الفعاليات",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 240,
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                "المزيد",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF9327d5),
                                ),
                              )),
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: Color(0xFF9327d5),
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          evnts(),
                          SizedBox(
                            height: 5,
                          ),
                          evnts(),
                          SizedBox(
                            height: 5,
                          ),
                          evnts(),
                          SizedBox(
                            height: 5,
                          ),
                          evnts(),
                          evnts()
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              "المجتمعات",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 225,
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                "المزيد",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF9327d5),
                                ),
                              )),
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: Color(0xFF9327d5),
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 300,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              "قراءاتي",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 250,
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                "المزيد",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF9327d5),
                                ),
                              )),
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: Color(0xFF9327d5),
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [book(), book(), book(), book(), book()],
                      ),
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: SizedBox(
                width: double.infinity,
                height: 60,
                child: bottomnavigtor(),
              ))),
    );
  }
}
