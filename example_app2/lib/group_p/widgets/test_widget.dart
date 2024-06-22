import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
    final String text;
    final int hello;
  const NewWidget({
    super.key,
    required this.text,
    required this.hello,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('search');
  }
}
