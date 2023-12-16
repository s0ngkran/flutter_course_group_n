import 'dart:convert';

import 'package:example_app3/data/addressf.dart';
import 'package:example_app3/data/juserf.dart';
import 'package:example_app3/modules/json_placeholder/json_placeholder_ctl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../data/user_model.dart';
import '../../main.dart';

class JsonPlaceholderScr extends StatelessWidget {
  const JsonPlaceholderScr({super.key});

  @override
  Widget build(BuildContext context) {
    JsonPlaceholderCtl c = j;
    Addressf address = Addressf();

    String? x = address.notes?[0].idCard?.title;

    // call api
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('test json'),
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
