import 'package:flutter/material.dart';

class ExampleForTextField extends StatelessWidget {
  const ExampleForTextField({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            color: Colors.green,
          ),
          TextField(
            controller: textController,
            // placeholder -> name
            decoration: const InputDecoration(
              hintText: 'Enter your name: ...',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print(textController.text);
            },
            child: const Text('Submit'),
          )
        ],
      ),
    );
  }
}
