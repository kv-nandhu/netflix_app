import 'package:flutter/material.dart';
import 'package:netflix/bottom_nav/bottom_nav.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 2300), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (home) => const MyBottom()),
          (route) => false);
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://i.pinimg.com/originals/f6/b1/1b/f6b11bd53411d94338117381cf9a9b9b.gif',
            )
          ],
        ),
      ),
    );
  }
}