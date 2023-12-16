import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app_routes.dart';
import 'home_ctl.dart';

class HomeScr extends StatelessWidget {
  const HomeScr({super.key});

  @override
  Widget build(BuildContext context) {
    print('build........');
    // Get.put(HomeCtl());
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
            // btn
            // AutoSizeTextField(),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.todo);
              },
              child: Text(
                'todo',
              ),
            ),
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
                    Text(
                      c.cnt.toString(),
                      // size 20
                      style: TextStyle(
                        fontSize: 70,
                      ),
                    ),
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
              onPressed: () async {
                // validate form
                print('-----bef');
                 2.delay(() => print('...done delay'));
                // await Future.delayed(Duration(seconds: 1));
                // await Future.delayed(1.seconds);
                print('aft');
                // if (kf.currentState!.validate()) {
                //   c.name.value = nameCon.text;
                //   c.cnt++;
                //   print(c.cnt.value);
                // }
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
            ),
            // MyTextField('username'),
            // MyTextField('password'),

            // MyText2()
          ],
        ),
      ),
    );
  }
}

class MyText2 extends StatelessWidget {
  const MyText2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // run something
    return AutoSizeTextField(
      minFontSize: 19,
    ); // build
  }
}

class MyTextField extends AutoSizeTextField {
  MyTextField(String hint)
      : super(
          // placeholder: hint,
          minFontSize: 18,
        ); // build
}
