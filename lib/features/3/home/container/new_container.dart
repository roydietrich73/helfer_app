import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';

class NewContainer extends StatelessWidget {
  const NewContainer({
    super.key,
    required Color color2,
  }) : _color2 = color2;

  final Color _color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: _color2,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: chtColor2.withOpacity(0.8),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            )
          ]),
      child: const Center(
        child: Text('Hilfe anbieten', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
