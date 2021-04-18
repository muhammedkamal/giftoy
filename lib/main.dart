import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.deepPurple,
          accentColor: Colors.lightGreenAccent,
          textTheme: TextTheme(
            headline6: TextStyle(
              fontFamily: 'ZenDots',
            ),
            bodyText1: TextStyle(
              fontFamily: 'Amiri',
            ),
          )),
      home: SplashScreen(),
    );
  }
}
