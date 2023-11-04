import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NumWidget extends StatelessWidget {
  final String text;
  final Null Function() onTap;
  const NumWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var padX = Get.width / 3 - 30 - 15 * 4;
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Color.fromARGB(255, 108, 108, 108),
        child: Padding(
          padding: EdgeInsets.only(
            left: padX,
            right: padX,
            top: 10,
            bottom: 10,
          ),
          child: Text(
            text,
            // color green
            style: TextStyle(
              fontSize: 40,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
    );
  }
}
