import 'package:flutter/material.dart';

class ProfileTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool enabled;

  const ProfileTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
      ),
      enabled: enabled,
    );
  }
}
