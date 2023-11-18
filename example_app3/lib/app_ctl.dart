import 'package:get/get.dart';

import 'main.dart';
import 'modules/todo/data.dart';

class AppCtl extends GetxController {
  test() {
    print('/// run test ///');

    todo.todos.value = [
      Data(id: 0, title: 'hello'),
      // Data(id: 1, title: 'hello'),
      // Data(id: 2, title: 'hellottt'),
    ];
  }
}
