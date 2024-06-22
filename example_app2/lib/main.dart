import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'group_p/main_scr.dart';
import 'pages/first_scr.dart';

Future<void> main() async {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  // Injection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // getPages: AppPages.pages,
      // initialRoute: Routes.login,
      // home: FirstScr(),
      home: MainScr(),
    );
  }
}
