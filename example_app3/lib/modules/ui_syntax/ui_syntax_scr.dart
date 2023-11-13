import 'package:flutter/material.dart';
import 'package:get/get.dart';

get secondary {
  return Theme.of(Get.context!).colorScheme.secondary;
}

// getter function
Color get getSec {
  return Theme.of(Get.context!).colorScheme.secondary;
}

class UiSyntaxScr extends StatelessWidget {
  const UiSyntaxScr({super.key});

  @override
  Widget build(BuildContext context) {
    //  -> spread out(...), for, if-else, if inline, null safety(?)
    List<Widget> spout = [Text('test')];
    List<String> threeText = [
      'test1'
          'test2'
          'test3'
    ];

    // for (var i = 0; i < 10; i++)
    //   Text('hello $i');
    String? count = null; // type -> string nullable
    List<String>? list = ['test1', 'test2', 'test3'];
    // String count2 = count!;
    // res?.body?.data!.person!.name ?? 'empty'
    print('this line');

    var isLeft = true.obs;

    // define tween
    // var tween = Tween<double>(begin: 0, end: 1);
    // tween.animate(CurvedAnimation(
    //   parent: AnimationController(
    //     vsync: this,
    //     duration: Duration(milliseconds: 300),
    //   ),
    //   curve: Curves.easeIn,
    // ));

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(count ?? 'empty'),
            Divider(),
            const Placeholder(),
            Text('hello'),
            Text('hello'),

            // spread out
            ...[
              Text('in list hello'),
              Text('in list hello'),
              Text('in list hello'),
            ],
            // Text('in list hello'),
            // Text('in list hello'),
            // Text('in list hello'),
            ...spout,

            for (var i = 0; i < 4; i++)
              //
              Text('hello $i'),
            Text('----'),
            //
            //
            //
            for (var i = 0; i < 4; i++)
              //
              Column(
                children: [
                  Text('hello $i'),
                  Text('----'),
                ],
              ),

            for (String text in threeText)
              //
              Text(text),

            if (1 > 1)
              //
              Text('hello'),

            if (1 > 1)
              //
              Text('hello if')
            else
              Text('else'), // comma

            // inline
            (1 > 1 && 1 > 2) ? Text('hello') : Text('else'),

            // null safety -> ??, ?, !
            Text(count ?? 'empty'),

            ((list?.length ?? 0) > 0) ? Text('not empty') : Text('empty'),
            // null.length => null
            // res?.body?.data?.person?.name ?? 'empty'

            Text(
              'test ',
              style: TextStyle(
                color: Theme.of(context)
                    //
                    .colorScheme
                    .onPrimary,
              ),
            ),

            ElevatedButton(
              onPressed: () {
                // isLeft.value = !isLeft.value;
                print(isLeft);
                // change theme using getx
                // Get.snackbar('test', 'hello');
                // Get.defaultDialog(
                //   title: 'test',
                //   content: Text('hello'),
                //   onCancel: () {
                //     print('hello');
                //   },
                // );
                // Get.bottomSheet(
                //   Container(
                //     color: Colors.white,
                //     child: Column(
                //       children: [
                //         const Padding(
                //           padding: EdgeInsets.all(36.0),
                //           child: FlutterLogo(),
                //         ),
                //         ListTile(
                //           title: Text('hello'),
                //           onTap: () {
                //             print('hello');
                //           },
                //         ),
                //         CircularProgressIndicator.adaptive(),
                //       ],
                //     ),
                //   ),
                //   // Material(
                //   //   child: Column(
                //   //     children: [
                //   //       Text('hello'),
                //   //       Text('hello'),
                //   //     ],
                //   //   ),
                //   // ),
                // );
              },
              child: Text(
                'hi',
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  // Colors.red,
                  // Theme.of(context).colorScheme.secondary,
                  secondary,
                ),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(65.0),
                  child: Container(
                    color: Colors.red,
                    child: const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Text('test'),
                    ),
                  ),
                ),
                /*
                build
                  |
                  V
                delay    box(build)
                 |         |
                 V         V
                 |        done
                |
                |
                V
                reset
                
                */
                Obx(() {
                  0.3.delay(
                    () => isLeft.value = !isLeft.value,
                  );
                  return AnimatedPositioned(
                    bottom: 10,
                    left: isLeft.value ? 10 : 60,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.elasticIn,
                    child: Container(
                      color: Colors.green,
                      child: const Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Text('test'),
                      ),
                    ),
                  );
                }),

                // use tween
                // TweenAnimationBuilder(
                //   tween: tween,
                //   duration: Duration(milliseconds: 300),
                //   builder: (context, double value, child) {
                //     return Positioned(
                //       bottom: 10,
                //       left: value * 50,
                //       child: Container(
                //         color: Colors.blue,
                //         child: const Padding(
                //           padding: EdgeInsets.all(25.0),
                //           child: Text('test'),
                //         ),
                //       ),
                //     );
                //   },
                // ),
              ],
            ),

            SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
