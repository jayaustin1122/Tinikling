import 'package:flutter/material.dart';
import 'package:tinikling/holder.dart';
import 'package:tinikling/login_screen.dart';
import 'package:tinikling/signup_screen.dart';
import 'package:tinikling/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const SplashScreen(), // SplashScreen route
        "/login": (context) => const LoginScreen(), // LoginScreen route
        "/register": (context) => const SignupScreen(), // SignupScreen route
        "/home": (context) => const Holder(), // SignupScreen route
      },
    );
  }
}
