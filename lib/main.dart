import 'package:flutter/material.dart';
import 'package:ui_5_5/cart.dart';
import 'package:ui_5_5/detail.dart';
import 'package:ui_5_5/homePage.dart';
import 'package:ui_5_5/splash_screen.dart';



void main()
{
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: CartPage(),
    );
  }
}
