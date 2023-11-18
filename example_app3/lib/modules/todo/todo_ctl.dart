import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data.dart';

class TodoCtl extends GetxController {
  static TodoCtl get to => Get.find();
  RxList<Data> todos = <Data>[
    Data(id: -2, title: 'add your todo here...'),
    Data(id: -1, title: 'add your todo here...'),
  ].obs;

  // Rx<List<Data>?> todos2 = null;

  // RxList -> rebuild when "self.value = ..."
  // Rx<List> -> rebuild when self.refresh()
  // -> ignore self.value = ...
  var t1 = RxList<String>(['hello1']);
  var t2 = Rx<List<String>>(['hello2']);
  // t.value.add()
  // t.add()

  var currentId = 0;
  // var currentIconId = 0.obs;
  var currentIcon = Rxn<IconData>(null);

  @override
  onInit() {
    print('on init ctl');
    for (int i = 0; i < 30; i++) {
      print('onInt ${i}');
    }
  }

  @override
  onReady() {
    print('on ready ctl');
  }

  @override
  onClose() {
    print('on close ctl');
  }

  addTodo(String title) {
    currentId++;
    todos.add(Data(
      id: currentId,
      title: title,
      icon: currentIcon.value,
    ));
    //Icons.home -> iconData
    // Icon(Icons.home)
  }

  removeAt(int index) {
    // remove todo by id
    todos.removeWhere((element) => element.id == index);
    print('index ${index}\n');

    // print(todos);
    // print each todo
    todos.forEach((element) {
      // print all fields
      print(element.id);
      print(element.title);
      print(element.icon);
      print('\n');
    });
    // fix here
    // todos.removeAt(index);
  }

  editAt(int index, String title, Icon? icon) {
    // fix here
    // find todo by id
    var todo = todos.firstWhere((element) => element.id == index);
    todo.title = title;
    // todo.icon = icon;
    todos.refresh();
  }

  clear() {
    todos.clear();
  }

  void setIcon(IconData iconData) {
    currentIcon.value = iconData;
  }
}
