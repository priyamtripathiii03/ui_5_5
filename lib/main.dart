import 'package:flutter/material.dart';
import 'package:ui_5_5/cart.dart';
import 'package:ui_5_5/detail.dart';
import 'package:ui_5_5/homePage.dart';
import 'package:ui_5_5/splash_screen.dart';
import 'package:ui_5_5/total.dart';



void main()
{
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        '/': (context)=> SplashScreen(),
        '/home': (context)=> Homepage(),
        '/detail': (context)=> DetailPage(),
        '/cart': (context)=> CartPage(),
        '/total': (context)=> Total(),
      },
    );
  }
}
