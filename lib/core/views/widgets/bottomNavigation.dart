import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class bottomnavigtor extends StatefulWidget {
  const bottomnavigtor({super.key});

  @override
  State<bottomnavigtor> createState() => _bottomnavigtorState();
}

class _bottomnavigtorState extends State<bottomnavigtor> {
  int _currentIndex = 0;
  final List<String> _navigationRoutes = [
    '/home',
    '/ev',
    '/books',
    '/club',
    '/user',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() {
          _currentIndex = i;
          Navigator.pushReplacementNamed(context, _navigationRoutes[i]);
        }),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("الرئيسية"),
            selectedColor: Colors.purple,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            title: Text("الفعاليات"),
            selectedColor: Colors.pink,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.book),
            title: Text("الكتب"),
            selectedColor: Color.fromARGB(255, 245, 23, 23),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.group),
            title: Text("المجتمعات"),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("حسابي"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
