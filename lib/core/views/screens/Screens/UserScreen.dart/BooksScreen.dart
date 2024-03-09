import 'package:biblophila2/core/views/screens/Screens/UserScreen.dart/filterScreen.dart';
import 'package:biblophila2/core/views/screens/Screens/UserScreen.dart/filterScreen2.dart';
import 'package:biblophila2/core/views/widgets/book.dart';
import 'package:biblophila2/core/views/widgets/booklist.dart';
import 'package:biblophila2/core/views/widgets/bottomNavigation.dart';
import 'package:biblophila2/core/views/widgets/evnts.dart';
import 'package:flutter/material.dart';

class BooksScreen extends StatelessWidget {
  _showBottomSheet1(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return FilterScreen2();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Row(
                  children: [
                    Container(
                      child: Text(
                        "الكتب",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 230,
                    ),
                    InkWell(
                      onTap: () {
                        _showBottomSheet1(context);
                      },
                      child: Icon(
                        Icons.filter_alt,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        width: 360,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(49, 67, 67, 67),
                            borderRadius: BorderRadius.circular(10)),
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
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "جديدنا",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 245,
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
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [book(), book(), book(), book(), book()],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "كتب أدبية",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 218,
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
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [book(), book(), book(), book(), book()],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "كتب علمية",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 218,
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
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [book(), book(), book(), book(), book()],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "كتب دينية",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 218,
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
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [book(), book(), book(), book(), book()],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "كتب سياسية",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 190,
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
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [book(), book(), book(), book(), book()],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "كتب فنية",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
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
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [book(), book(), book(), book(), book()],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "كتب تاريخية",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 190,
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
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [book(), book(), book(), book(), book()],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "كتب سيرة ذاتية",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 155,
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
