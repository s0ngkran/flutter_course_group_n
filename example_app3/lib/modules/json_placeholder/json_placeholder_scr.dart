import 'dart:convert';

import 'package:example_app3/data/addressf.dart';
import 'package:example_app3/data/juserf.dart';
import 'package:example_app3/modules/json_placeholder/json_placeholder_ctl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fpdart/src/either.dart';
import 'package:get/get.dart';

import '../../app_routes.dart';
import '../../consts/enums.dart';
import '../../data/user_model.dart';
import '../../main.dart';

class JsonPlaceholderScr extends StatelessWidget {
  const JsonPlaceholderScr({super.key});

  @override
  Widget build(BuildContext context) {
    JsonPlaceholderCtl c = j;
    Addressf address = Addressf();

    String? x = address.notes?[0].idCard?.title;

    final TextEditingController tc = TextEditingController();
    // call api
    var isOpen = false.obs;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('test json'),
            Obx(() {
              return Column(
                children: [
                  if (isOpen.value)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: tc,
                      ),
                    ),
                  ElevatedButton(
                    onPressed: () {
                      if (!isOpen.value) {
                        isOpen.value = true;
                        return;
                      }
                      String pass = tc.text;
                      ss.pass.val = pass;
                      Get.offAllNamed(Routes.login);
                    },
                    child: Text(
                      isOpen.value ? 'SET' : 'set password',
                    ),
                  ),
                ],
              );
            }),
            ElevatedButton(
              onPressed: () async {
                var t0 = DateTime.now();
                await c.call();
                var t1 = DateTime.now();
                // c.data.add('------hi ${t1.difference(t0).inMilliseconds} ms');
              },
              child: Text(
                'call',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                var t0 = DateTime.now();
                await c.call2();
                var t1 = DateTime.now();
                // c.data.add('------hi ${t1.difference(t0).inMilliseconds} ms');
              },
              child: Text(
                'call2',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                Either<ErrorGetTodo, UserModel> res = await c.call3();
                res.match(
                  (ErrorGetTodo l) {
                    switch (l) {
                      case ErrorGetTodo.abc:
                        Get.snackbar('abc', 'abc');
                        break;
                      case ErrorGetTodo.def:
                        Get.snackbar('def', 'def');
                        break;
                      case ErrorGetTodo.unknown:
                        Get.snackbar('un', 'un');
                        break;
                    }
                  },
                  (r) => null,
                );
                // c.data.add('------hi ${t1.difference(t0).inMilliseconds} ms');
              },
              child: Text(
                'call3',
              ),
            ),
            Obx(() => Column(
                  children: <Widget>[
                    ...c.data.map(
                      (UserModel element) {
                        if (element.title == '') {
                          return CircularProgressIndicator();
                        }
                        return Card(
                          child: ListTile(
                            leading: Text(element.id.toString()),
                            // subtitle: Text(element.title2 ?? 'null'),
                            title: Text(element.title ?? 'xxx'),
                          ),
                        );
                      },
                    )
                  ],
                )),
            Obx(() => Column(
                  children: <Widget>[
                    ...c.jdata.map(
                      (Juserf element) {
                        if (element.name == '') {
                          return CircularProgressIndicator();
                        }
                        return Card(
                          child: ListTile(
                            leading: Text(element.id.toString()),
                            title: Text(element.company?.name ?? 'xxx'),
                            subtitle: Text(element.address?.geo?.lat ?? 'null'),
                          ),
                        );
                      },
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
