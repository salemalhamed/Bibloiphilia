import 'package:biblophila2/core/constant/AppRoute.dart';
import 'package:biblophila2/core/viewmodels/booksVM.dart';
import 'package:biblophila2/core/viewmodels/usersVM.dart';
import 'package:biblophila2/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => UsersVM()),
        ChangeNotifierProvider(create: (ctx) => BooksVM()),
      ],
      child: MaterialApp(
        theme: ThemeData(useMaterial3: false),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoutes.generteRouts,
        initialRoute: '/',
      ),
    );
  }
}
