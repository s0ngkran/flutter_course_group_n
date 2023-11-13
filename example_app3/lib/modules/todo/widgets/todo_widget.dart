import 'package:flutter/material.dart';

import '../data.dart';

class TodoWidget extends StatelessWidget {
  final Data todo;
  final Null Function() onDelete;
  final Null Function() onEdit;
  const TodoWidget({
    super.key,
    required this.todo,
    required this.onDelete,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(todo.icon),
      title: Text('${todo.title} ind=>${todo.id}'),
      trailing: InkWell(
        onTap: onDelete,
        child: const Icon(
          Icons.delete,
        ),
      ),
      onTap: onEdit,
    );
  }
}
