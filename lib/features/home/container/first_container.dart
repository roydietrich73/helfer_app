import 'package:flutter/material.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({
    super.key,
    required Color color1,
  }) : _color1 = color1;

  final Color _color1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: _color1,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
      child: const Center(
        child: Text(
          'Hilfe suchen',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
