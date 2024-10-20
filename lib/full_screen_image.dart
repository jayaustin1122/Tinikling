import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  final String image;

  const FullScreenImage({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Close fullscreen on tap
          },
          child: Image.asset(image),
        ),
      ),
    );
  }
}
