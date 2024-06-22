import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/test_widget.dart';

class MainScr extends StatelessWidget {
  const MainScr({super.key});
  final double xxxWidth = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // group 1
                Row(
                  children: const [
                    FlutterLogo(size: 30),
                    Text('ttestt'),
                    Icon(
                      Icons.accessibility,
                    ),
                  ],
                ),
                // group 2
                const NewWidget(text: 'hello', hello: 2),

                // group 3
                Row(
                  children: [
                    const Text('badge'),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Log In'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Sign Up'),
                    ),
                    const Icon(Icons.man)
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              child: Row(
                children: [
                  SizedBox(
                    width: xxxWidth,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.camera),
                          ),
                          // ignore: unused_local_variable
                          for (String imgUrl in [
                            'x',
                            'x',
                            'x',
                            'x',
                            'x',
                            'x',
                            'x',
                            'x',
                            'x',
                            'x',
                            'x',
                            'x',
                            'x',
                            'x',
                            'x',
                            'x',
                            'x',
                          ])
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 0,
                                // backgroundImage: NetworkImage(imgUrl),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: 'ttestt',
                                      content: const Text('ttestt'),
                                      textConfirm: 'ttestt',
                                      textCancel: 'ttestt',
                                      confirmTextColor: Colors.red,
                                      cancelTextColor: Colors.blue,
                                      onConfirm: () {},
                                      onCancel: () {},
                                    );
                                  },
                                  child: const Icon(Icons.fork_left),
                                ),
                                Container(
                                  height: 100,
                                  width: 300,
                                  color: Colors.blue,
                                  child: const Text('ttestt'),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: 'ttestt',
                                      content: const Text('ttestt'),
                                      textConfirm: 'ttestt',
                                      textCancel: 'ttestt',
                                      confirmTextColor: Colors.red,
                                      cancelTextColor: Colors.blue,
                                      onConfirm: () {},
                                      onCancel: () {},
                                    );
                                  },
                                  child: const Icon(Icons.fork_left),
                                ),
                              ],
                            ),
                            Row(
                              children:const [
                                 Text(
                                  "Live channels",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 219, 64, 246),
                                  ),
                                ),
                                 Text(
                                  "we think you'll like",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ],
                            ),
                            for (var i = 0; i < 10; i++)
                              Row(
                                children: const [
                                  SizedBox(
                                    height: 100,
                                    child: Text('ttestt'),
                                  ),
                                ],
                              )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

