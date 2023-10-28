import 'package:example_app2/pages/docker_scr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'second_scr.dart';

class FirstScr extends StatelessWidget {
  const FirstScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Text('First Screen'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // nav to second screen
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return const SecondScr();
              //     },
              //   ),
              // );
              Get.to(SecondScr());
            },
            child: Text(
              'go to second',
            ),
          ),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.red,
          //   ),
          //   onPressed: () {
          //     // nav pop
          //     bool canPop = Navigator.canPop(context);
          //     if (canPop) {
          //       Navigator.pop(context);
          //     } else {
          //       print('cannot pop');
          //     }
          //   },
          //   child: const Text(
          //     'pop',
          //   ),
          // ),

          // btn nav to docker
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
              // nav to docker
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return const DockerScr();
              // }));
              Get.to(DockerScr());
            },
            child: const Text(
              'go to docker',
            ),
          ),
        ],
      ),
    );
  }
}
