import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
        body: Center(
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed('/home');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/img/logo2.jpg'),
                    )
                  ),
                ),
                Text('Priyam Book Store',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 0.5),),
              ],
            ),
          ),
        )
    );
  }
}
