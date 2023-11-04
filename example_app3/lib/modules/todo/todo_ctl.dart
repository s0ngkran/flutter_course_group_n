import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data.dart';

class TodoCtl extends GetxController {
  static TodoCtl get to => Get.find();
  RxList<Data> todos = <Data>[
    Data(id: -2, title: 'add your todo here...'),
    Data(id: -1, title: 'add your todo here...'),
  ].obs;
  var currentId = 0;

  addTodo(String title, Icon? icon) {
    todos.add(Data(id: currentId, title: title, icon: icon));
  }

  removeAt(int index) {
    // fix here
    todos.removeAt(index);
  }

  editAt(int index, String title, Icon? icon) {
    // fix here
    // find todo by id
    var todo = todos.firstWhere((element) => element.id == index);
    todo.title = title;
    todo.icon = icon;
    todos.refresh();
  }

  clear() {
    todos.clear();
  }
}
