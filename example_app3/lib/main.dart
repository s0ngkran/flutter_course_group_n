import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app_ctl.dart';
import 'app_life.dart';
import 'app_pages.dart';
import 'app_routes.dart';
import 'data/geo.dart';
import 'example_for_text_field.dart';
import 'example_for_text_form_field.dart';
import 'modules/awesome_widget/awesome_widget_scr.dart';
import 'modules/home/home_ctl.dart';
import 'modules/home/home_scr.dart';
import 'modules/home/home_scr_stateful.dart';
import 'modules/json_placeholder/json_placeholder_ctl.dart';
import 'modules/mini_calculator/mini_calculator_scr.dart';
import 'modules/todo/todo_ctl.dart';
import 'modules/todo/todo_scr.dart';
import 'modules/ui_syntax/ui_syntax_scr.dart';
import 'services/storage_service.dart';

Future<void> main() async {
  MyStorage storage = MyStorage();
  await storage.init();
  Get.put(storage);
  Get.put(AppLife());
  Get.put(AppCtl());
  runApp(const MyApp());
  People(age: 0, name: '');
  Geo(lat: '0', lng: '0');
}

/*
stack
todo + todoctl
home + homectl
*/

MyStorage get ss => Get.find<MyStorage>();
HomeCtl get home => Get.find<HomeCtl>();
TodoCtl get todo => Get.find<TodoCtl>();
AppCtl get app => Get.find<AppCtl>();
JsonPlaceholderCtl get j => Get.find<JsonPlaceholderCtl>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      getPages: AppPages.routes,
      // initialRoute: Routes.home,
      // initialRoute: Routes.json,
      initialRoute: Routes.login,

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
