import 'package:flutter/material.dart';

class Hackathon extends StatelessWidget {
  final String message;
  final String title;
  const Hackathon({
    super.key,
    required this.message,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(title),
          ),
        ),
        const SizedBox(width: 20),
        Text(message),
      ],
    );
  }
}
