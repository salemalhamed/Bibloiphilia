import 'package:biblophila2/core/views/screens/Screens/UserScreen.dart/filterScreen.dart';
import 'package:biblophila2/core/views/widgets/Ubook.dart';
import 'package:biblophila2/core/views/widgets/book.dart';
import 'package:biblophila2/core/views/widgets/bottomNavigation.dart';
import 'package:biblophila2/core/views/widgets/clubs.dart';
import 'package:biblophila2/core/views/widgets/evnts.dart';
import 'package:flutter/material.dart';

class ClubScreen extends StatelessWidget {
  _showBottomSheet1(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return FilterScreen();
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
                        "المجتمعات",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 220,
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
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 700,
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
