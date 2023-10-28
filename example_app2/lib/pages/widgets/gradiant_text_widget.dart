import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final Color firstColor;
  final Color secondColor;
  final double fontSize;

  GradientText({
    required this.text,
    required this.firstColor,
    required this.secondColor,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [firstColor, secondColor],
        ).createShader(bounds);
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 255, 255, 255), // this is necessary for ShaderMask to work
        ),
      ),
    );
  }
}
