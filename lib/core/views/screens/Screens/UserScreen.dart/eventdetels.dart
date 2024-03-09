import 'package:biblophila2/core/views/screens/Screens/UserScreen.dart/filterScreen.dart';
import 'package:biblophila2/core/views/screens/payment/payment.dart';
import 'package:biblophila2/core/views/widgets/book.dart';
import 'package:biblophila2/core/views/widgets/bottomNavigation.dart';
import 'package:biblophila2/core/views/widgets/evnts.dart';
import 'package:flutter/material.dart';

class EventDetelsScreen extends StatelessWidget {
  _showBottomSheet2(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Paymentscreen(
          amount: 100,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
            child: Scaffold(
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            height: 250,
                            width: 400,
                            child: Image.asset("assets/images/ev1.png",
                                fit: BoxFit.cover)),
                        Positioned(
                            child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(255, 255, 255, 255)
                                    .withOpacity(0),
                                Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                              ],
                            ),
                          ),
                          height: 250,
                          width: double.infinity,
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "ماراثون القراءة",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "الوصف:",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      """هل أنت من محبي القراءة؟
هل ترغب في اختبار مهاراتك في القراءة والمشاركة في تحدٍّ ممتع؟
انضم إلى ماراثون القراءة الذي سيقام في مدينة الرياض!""",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "الموعد:",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "20-2-2024",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "الموقع:",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "الرياض-فندق الموفنبيك",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        _showBottomSheet2(context);
                      },
                      child: Container(
                        child: Center(
                            child: Text(
                          "حجز",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Color(0xFF9327d5),
                            border: Border.all(
                              width: 2,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ],
                ),
                bottomNavigationBar: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: bottomnavigtor(),
                ))));
  }
}
