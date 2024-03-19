import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(labelText: ''),
      validator: (value) {
        if (value!.isEmpty) {
          return '';
        }
        return null;
      },
      onSaved: (value) {},
    );
  }
}
