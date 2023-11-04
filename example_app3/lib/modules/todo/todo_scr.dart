import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data.dart';
import 'todo_ctl.dart';
import 'widgets/todo_widget.dart';

class TodoScr extends StatelessWidget {
  const TodoScr({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController title = TextEditingController();
    GlobalKey<FormState> kf = GlobalKey<FormState>();
    Get.put(TodoCtl());
    var c = Get.find<TodoCtl>();
    Icon? icon;
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoScr'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.defaultDialog(
            onConfirm: () {
              c.addTodo(title.text, icon);
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      c.clear();
                    },
                    child: Text('clear')),
              ],
            ),
            Obx(() {
              return Column(
                children: [
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
                            c.editAt(todo.id, tc.text, icon);
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
