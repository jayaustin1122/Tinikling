import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer(); // Start the timer on initialization
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints:
            BoxConstraints.expand(), // Make the container fill the screen
        color: Colors.white,
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centers content vertically
          crossAxisAlignment:
              CrossAxisAlignment.center, // Centers content horizontally
          children: [
            Image.asset(
              "assets/icon_logo.png",
              width: 150, // Adjust width/height as needed
              height: 150,
            ),
            const SizedBox(height: 20), // Adds space between image and text
            const Text(
              'iGalaw',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void nav() {
    Navigator.pushReplacementNamed(context, "/login"); // Use the named route
  }

  void startTimer() {
    const duration = Duration(seconds: 3);
    Timer(duration, nav); // Start the timer and call nav() after 3 seconds
  }
}
