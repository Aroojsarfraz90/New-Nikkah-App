import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/get_started');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // same as your background
      body: Center(
        child: SizedBox(
          width: 200, // Adjust the size as needed
          height: 200,
          child: Image.asset(
            'assets/images/mainLogo.png', // Make sure you have the image in assets
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
