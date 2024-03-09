import 'package:biblophila2/core/views/screens/Screens/AuthScreens/loginScreen.dart';
import 'package:biblophila2/core/views/screens/Screens/AuthScreens/regstreationScreen.dart';
import 'package:biblophila2/core/views/screens/Screens/UserScreen.dart/BooksScreen.dart';
import 'package:biblophila2/core/views/screens/Screens/UserScreen.dart/EventScreen.dart';
import 'package:biblophila2/core/views/screens/Screens/UserScreen.dart/HomeScreen.dart';
import 'package:biblophila2/core/views/screens/Screens/UserScreen.dart/clubsScreen.dart';
import 'package:biblophila2/core/views/screens/Screens/UserScreen.dart/eventdetels.dart';
import 'package:biblophila2/core/views/screens/Screens/UserScreen.dart/userScreen.dart';
import 'package:biblophila2/core/views/screens/Screens/splashScreen.dart';
import 'package:biblophila2/core/views/widgets/evnts.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  //  تسوي هاندل لكل الملفات اعامل كل صفحة على اساس انها رابط
  static const String homeroute = "/";
  static const String splashscreen = "/splash";
  static const String authscreen = "/home";
  static const String loginScreen = "/login";
  static const String regstration = "/reg";
  static const String enents = "/ev";
  static const String eventdetels = "/eventD";
  static const String books = "/books";
  static const String user = "/user";
  static const String club = "/club";

  static Route<dynamic> generteRouts(RouteSettings Rsettings) {
    switch (Rsettings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => splashScreen(),
        );
      case "/login":
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case "/reg":
        return MaterialPageRoute(
          builder: (context) => RegstrationScreen(),
        );

      case "/home":
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );

      case "/ev":
        return MaterialPageRoute(
          builder: (context) => EventScreen(),
        );
      case "/books":
        return MaterialPageRoute(
          builder: (context) => BooksScreen(),
        );
      case "/user":
        return MaterialPageRoute(
          builder: (context) => UserScreen(),
        );
      case "/club":
        return MaterialPageRoute(
          builder: (context) => ClubScreen(),
        );
      case "/eventD":
        return MaterialPageRoute(
          builder: (context) => EventDetelsScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
    }
  }
}
