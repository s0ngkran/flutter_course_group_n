import 'package:flutter/material.dart';

class DisplayWidget extends StatelessWidget {
  final String text;
  const DisplayWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Color.fromARGB(255, 28, 28, 28),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Text(
                  //
                  text,
                  style: const TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 14, 255, 22),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
