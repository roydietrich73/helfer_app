import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';

class ElvdButton extends StatelessWidget {
  const ElvdButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          'Weiter',
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor2,
          fixedSize: const Size(150, 50),
          elevation: 20,
        ));
  }
}