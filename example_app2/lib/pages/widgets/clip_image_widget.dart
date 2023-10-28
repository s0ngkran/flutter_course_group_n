import 'package:flutter/material.dart';

class BottomCurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    const double curveHeight = 120.0; // adjust this for more or less curve

    path.lineTo(0, size.height - curveHeight);
    path.quadraticBezierTo(size.width / 2, size.height - 100, size.width, size.height - curveHeight);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
