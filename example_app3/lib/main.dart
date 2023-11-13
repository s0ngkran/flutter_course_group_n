import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'example_for_text_field.dart';
import 'example_for_text_form_field.dart';
import 'modules/awesome_widget/awesome_widget_scr.dart';
import 'modules/home/home_scr.dart';
import 'modules/home/home_scr_stateful.dart';
import 'modules/mini_calculator/mini_calculator_scr.dart';
import 'modules/todo/todo_scr.dart';
import 'modules/ui_syntax/ui_syntax_scr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //     colorScheme: const ColorScheme(
      //   brightness: Brightness.dark,
      //   primary: Colors.blue,
      //   onPrimary: Colors.green,
      //   secondary: Colors.purple,
      //   onSecondary: Colors.grey,
      //   error: Colors.red,
      //   onError: Colors.red,
      //   background: Colors.red,
      //   onBackground: Colors.red,
      //   surface: Colors.red,
      //   onSurface: Colors.red,
      // )), // light, dark
      // home: ExampleForTextField(),
      // home: ExampleForTextFormField();
      // home: HomeScr(),
      // home: HomeScrFul(),
      // home: MiniCalculatorScr(),
      // home: TodoScr(),
      // home: AwesomeWidgetScr(),
      home: UiSyntaxScr(),
    );
  }
}
