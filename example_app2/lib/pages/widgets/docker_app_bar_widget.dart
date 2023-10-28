import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DockerAppBar extends StatelessWidget {
  final bool isOpen;
  final Null Function() onTap;
  const DockerAppBar({
    super.key,
    required this.isOpen,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Text(
              'Docker',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 33, 96, 243),
              ),
            ),
            // Row(
            //   children: [
            //     for (String text in [
            //       'Products',
            //       'Developpers',
            //       'Pricing',
            //       'Blog',
            //       'About Us',
            //       'Partners',
            //     ])
            //       Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Container(
            //           child: Text(text),
            //         ),
            //       ),
            //   ],
            // ),
          ],
        ),

        if (isOpen)
          InkWell(
              onTap: onTap,
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(Icons.abc),
              ))
        else
          InkWell(
              onTap: onTap,
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(Icons.menu),
              ))
        // Spacer(),
      ],
    );
    ;
  }
}
