import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/config/fonts.dart';
//import 'package:helfer_app/features/authentification/presentation/buttons/google.dart';

class RegistrierenBtn1 extends StatelessWidget {
  final Function() onPressed;
  const RegistrierenBtn1({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: btnColor,
      ),
      child: TextButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)))),
        onPressed: onPressed,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              "Registrieren",
              style: TextStyle(
                color: Colors.black,
                fontFamily: fo20,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
