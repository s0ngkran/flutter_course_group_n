import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExampleForTextFormField extends StatelessWidget {
  const ExampleForTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    var name = TextEditingController();
    var phone = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          Placeholder(
            fallbackHeight: 100,
          ),
          Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: name,
                  decoration: const InputDecoration(
                    hintText: 'Enter your name: ...',
                  ),
                  validator: (String? value) {
                    if ((value?.length ?? 0) > 3) {
                      return 'Name must be less than 3 characters';
                    }
                    return null;
                  },
                ),
                // textfield for phone number
                TextFormField(
                  controller: phone,
                  decoration: const InputDecoration(
                    hintText: 'Enter your phone number: ...',
                    filled: true,
                    fillColor: Colors.blue,
                  ),
                  validator: (String? value) {
                    if ((value?.length ?? 0) > 2) {
                      return 'Phone number must be less than 10 characters';
                    }
                    if ((value?.length ?? 0) > 2) {
                      return 'Phone number must be less than 10 characters';
                    }
                    if ((value?.length ?? 0) > 2) {
                      return 'Phone number must be less than 10 characters';
                    }
                    if ((value?.length ?? 0) > 2) {
                      return 'Phone number must be less than 10 characters';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    // validate form
                    if (formKey.currentState!.validate()) {
                      print(name.text);
                      print(phone.text);
                      print('hello');
                    }
                  },
                  child: const Text('Submit'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
