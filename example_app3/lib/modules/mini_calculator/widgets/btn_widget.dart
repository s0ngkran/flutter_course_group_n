import 'package:flutter/material.dart';

class BtnWidget extends StatelessWidget {
  final Null Function() onTap;
  const BtnWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 100,
          width: 100,
          color: Color.fromARGB(255, 118, 211, 245),
          child: Center(
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
