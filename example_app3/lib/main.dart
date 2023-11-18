import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_ctl.dart';
import 'app_life.dart';
import 'app_pages.dart';
import 'app_routes.dart';
import 'example_for_text_field.dart';
import 'example_for_text_form_field.dart';
import 'modules/awesome_widget/awesome_widget_scr.dart';
import 'modules/home/home_ctl.dart';
import 'modules/home/home_scr.dart';
import 'modules/home/home_scr_stateful.dart';
import 'modules/mini_calculator/mini_calculator_scr.dart';
import 'modules/todo/todo_ctl.dart';
import 'modules/todo/todo_scr.dart';
import 'modules/ui_syntax/ui_syntax_scr.dart';

void main() {
  Get.put(AppLife());
  Get.put(AppCtl());
  runApp(const MyApp());
}

/*
stack
todo + todoctl
home + homectl
*/

HomeCtl get home => Get.find<HomeCtl>();
TodoCtl get todo => Get.find<TodoCtl>();
AppCtl get app => Get.find<AppCtl>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      getPages: AppPages.routes,
      initialRoute: Routes.home,

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
      // home: UiSyntaxScr(),
    );
  }
}
