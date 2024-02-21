import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/selection_screen.dart';

class ElvdButton extends StatelessWidget {
  const ElvdButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SelectionScreen()));
        },
        child: Text(
          'Weiter',
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor,
          fixedSize: const Size(150, 50),
          elevation: 20,
        ));
  }
}
