import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'example_for_text_field.dart';
import 'example_for_text_form_field.dart';
import 'modules/home/home_scr.dart';
import 'modules/home/home_scr_stateful.dart';
import 'modules/mini_calculator/mini_calculator_scr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // home: ExampleForTextField(),
      // home: ExampleForTextFormField();
      // home: HomeScr(),
      // home: HomeScrFul(),
      home: MiniCalculatorScr(),
    );
  }
}
