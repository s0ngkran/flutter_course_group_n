import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_ctl.dart';

class HomeScr extends StatelessWidget {
  const HomeScr({super.key});

  @override
  Widget build(BuildContext context) {
    print('build........');
    Get.put(HomeCtl());
    var c = Get.find<HomeCtl>();
    GlobalKey<FormState> kf = GlobalKey<FormState>();
    var nameCon = TextEditingController();
    var count = c.cnt.value;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScr'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FlutterLogo(),
            Form(
              key: kf,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: nameCon,
                    validator: (String? value) {
                      if ((value?.length ?? 0) > 5) {
                        return 'Phone number must be less than 10 characters';
                      }
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(() {
                print('bulid obx...');
                return Column(
                  children: [
                    Text(c.cnt.toString()),
                    if (c.name.value != '')
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(),
                          Text(c.name.value),
                        ],
                      )
                    else
                      // loading
                      CircularProgressIndicator.adaptive(),
                  ],
                );
              }),
            ),
            ElevatedButton(
              onPressed: () {
                // validate form
                if (kf.currentState!.validate()) {
                  c.name.value = nameCon.text;
                  c.cnt++;
                  print(c.cnt.value);
                }
              },
              child: Text(
                'submit',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                c.name.value = '';
              },
              child: Text(
                'clear',
              ),
            )
          ],
        ),
      ),
    );
  }
}
