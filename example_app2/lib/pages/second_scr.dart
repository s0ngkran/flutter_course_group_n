import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'first_scr.dart';

class SecondScr extends StatelessWidget {
  const SecondScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // red container 100x100
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              const Text('Second Screen'),

              /// [F, S [new]]

              // btn to first screen
              ElevatedButton(
                onPressed: () {
                  // nav to first screen // don't using pop
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FirstScr(),
                    ),
                  );
                },
                child: const Text(
                  'go to first',
                ),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  // nav pop
                  // Navigator.pop(context);
                  Get.back();
                },
                child: const Text(
                  'pop',
                ),
              ),

              // btn to pop all
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.amber,
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
              //     'pop all',
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
