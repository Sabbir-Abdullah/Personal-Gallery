import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_gallery/views/home_screen.dart';
import 'dart:async';

import 'package:typing_text/typing_text.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to home page after delay
    Timer(const Duration(seconds: 3), () {
      Get.to(() => const HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: TypingText(
              words: ['PERSONAL GALLERY'],
              letterSpeed: Duration(milliseconds: 100),
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DancingScript'),
            ),
          ),
        ),
      ),
    );
  }
}
