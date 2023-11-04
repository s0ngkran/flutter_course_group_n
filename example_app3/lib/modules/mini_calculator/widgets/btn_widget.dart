import 'package:flutter/material.dart';

class BtnWidget extends StatelessWidget {
  final Null Function() onTap;
  final bool? isNum;
  const BtnWidget({
    super.key,
    required this.text,
    required this.onTap,
    this.isNum,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    double size = isNum == true ? 50 : 100;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Card(
          child: Container(
            height: size,
            width: size,
            color: const Color.fromARGB(255, 118, 211, 245),
            child: Center(
              child: Text(text),
            ),
          ),
        ),
      ),
    );
  }
}
