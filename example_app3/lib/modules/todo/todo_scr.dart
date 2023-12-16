import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data.dart';
import 'todo_ctl.dart';
import 'widgets/my_icon_widget.dart';
import 'widgets/todo_widget.dart';

class TodoScr extends StatelessWidget {
  const TodoScr({super.key});

  @override
  Widget build(BuildContext context) {
    print('build...');
    for (int i = 0; i < 30; i++) {
      print('build ${i}');
    }
    TextEditingController title = TextEditingController();
    GlobalKey<FormState> kf = GlobalKey<FormState>();
    // Get.put(TodoCtl());
    var c = Get.find<TodoCtl>();

    Future.delayed(
      Duration.zero,
      () {
        print('after build delay zero');
      },
    );


    // 1, 2, 3, 4, 5

    // postFrame call
    WidgetsBinding.instance.addPostFrameCallback((_) {
      print('after build post frame');
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoScr'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.defaultDialog(
            onConfirm: () {
              c.addTodo(title.text);
              title.text = '';
              Get.back();
            },
            onCancel: () {
              Get.back();
            },
            content: Form(
              key: kf,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: title,
                    decoration: const InputDecoration(
                      hintText: 'Enter title: ...',
                    ),
                  ),
                  Obx(() {
                    return Row(
                      children: [
                        for (IconData iconData in [
                          Icons.home,
                          Icons.work,
                          Icons.school,
                        ])
                          Column(
                            children: [
                              Text(c.currentId.toString()),
                              MyIcon(
                                icon: iconData,
                                isActive: c.currentIcon.value == iconData,
                                onTap: () {
                                  c.setIcon(iconData);
                                },
                              ),
                            ],
                          ),
                      ],
                    );
                  }),
                ],
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Builder(builder: (context) {
              WidgetsBinding.instance.addPostFrameCallback(
                (_) {
                  print('post frame in center');
                  c.todos.value = [
                    Data(id: -1, title: 'add your todo here...'),
                  ];
                  c.todos.refresh();
                  print('done todos updated');
                },
              );
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      c.clear();
                    },
                    child: Text(
                      'clear',
                    ),
                  ),
                ],
              );
            }),
            Obx(() {
              print('obx building');
              return Column(
                children: [
                  Text(c.t1.toString()),
                  Text(c.t2.toString()),
                  // ignore: invalid_use_of_protected_member
                  for (Data todo in c.todos.value)
                    TodoWidget(
                      todo: todo,
                      onDelete: () {
                        Get.defaultDialog(
                            // are you sure to delete this todo?
                            title: 'Delete?',
                            content: Column(
                              children: const <Widget>[
                                Text(
                                  'Are you sure to delete this todo?',
                                )
                              ],
                            ),
                            onConfirm: () {
                              c.removeAt(todo.id);
                              Get.back();
                            },
                            onCancel: () {
                              Get.back();
                            });
                      },
                      onEdit: () {
                        GlobalKey<FormState> kf = GlobalKey<FormState>();
                        TextEditingController tc = TextEditingController();
                        tc.text = todo.title;
                        Get.defaultDialog(
                          onConfirm: () {
                            // TODO:
                            c.editAt(todo.id, tc.text, null);
                            Get.back();
                          },
                          onCancel: () {
                            Get.back();
                          },
                          content: Form(
                            key: kf,
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  controller: tc,
                                  decoration: const InputDecoration(
                                    hintText: 'Enter title: ...',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
