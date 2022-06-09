import 'package:flutter/material.dart';


import 'Screen/splash _screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Schoolie",
        theme: ThemeData(

          //Background color
          primarySwatch: MaterialColor(
            0xFF6087b2,
            <int, Color>{
              50: Color(0xFF6087b2),
              100: Color(0xFF6087b2),
              200: Color(0xFF6087b2),
              300: Color(0xFF6087b2),
              400: Color(0xFF6087b2),
              500: Color(0xFF6087b2),
              600: Color(0xFF6087b2),
              700: Color(0xFF6087b2),
              800: Color(0xFF6087b2),
              900: Color(0xFF6087b2),
            },

          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      debugShowCheckedModeBanner: false,

      home: SplashScreen()
    );
  }
}

