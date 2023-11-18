import 'package:get/get.dart';

import 'app_routes.dart';
import 'modules/home/home_ctl.dart';
import 'modules/home/home_scr.dart';
import 'modules/todo/todo_ctl.dart';
import 'modules/todo/todo_scr.dart';

class AppPages {
  static const init = Routes.home;

  static final List<GetPage> routes = <GetPage>[
    GetPage(
        name: Routes.home,
        page: () => const HomeScr(),
        binding: BindingsBuilder(
          () {
            return Get.lazyPut(
              () => HomeCtl(),
            );
          },
        )
        //
        ),
    GetPage(
      name: Routes.todo,
      page: () => const TodoScr(),
      binding: BindingsBuilder(
        () {
          return Get.lazyPut(
            () => TodoCtl(),
          );
        },
      ),
    ),
  ];
}
