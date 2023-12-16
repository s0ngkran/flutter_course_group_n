import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app_routes.dart';
import '../../main.dart';
import 'login_ctl.dart';

class LoginScr extends StatelessWidget {
  const LoginScr({super.key});

  @override
  Widget build(BuildContext context) {
    var c = Get.find<LoginCtl>();
    final TextEditingController tc = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScr'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('login'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tc,
              ),
            ),
            Obx(() {
              return Column(
                children: [
                  Text(c.dummy.value),
                ],
              );
            }),
            ElevatedButton(
              onPressed: () {
                bool isPassCorrect = ss.pass.val == tc.text;
                if (isPassCorrect) {
                  Get.offAllNamed(Routes.json);
                } else {
                  Get.snackbar('error', 'wrong password');
                }
              },
              child: Text('login'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.json);
              },
              child: Text('-dev to json'),
            ),
          ],
        ),
      ),
    );
  }
}
