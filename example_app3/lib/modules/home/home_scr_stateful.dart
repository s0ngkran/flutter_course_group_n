import 'package:flutter/material.dart';

class HomeScrFul extends StatefulWidget {
  const HomeScrFul({super.key}); // constructor

  @override
  State<HomeScrFul> createState() => _HomeScrFulState();
}

class _HomeScrFulState extends State<HomeScrFul> {
  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    print('build........');
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(cnt.toString()),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  cnt = cnt + 1;
                });
              },
              child: const Text('Submit'),
            )
          ],
        ),
      ],
    ));
  }
}
