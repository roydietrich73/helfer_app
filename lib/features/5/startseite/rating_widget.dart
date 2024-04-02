import 'package:flutter/material.dart';

class RatingWidget extends StatefulWidget {
  final void Function(int rating, String comment) onSubmit;

  const RatingWidget({super.key, required this.onSubmit});

  @override
  _RatingWidgetState createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  int _rating = 0;
  String _comment = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Bewertung abgeben:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Row(
          children: List.generate(5, (index) {
            return IconButton(
              icon: Icon(
                index < _rating ? Icons.star : Icons.star_border,
                color: Colors.red,
              ),
              onPressed: () {
                setState(() {
                  _rating = index + 1;
                });
              },
            );
          }),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: const InputDecoration(
            hintText: 'Bemerkungen (optional)',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            setState(() {
              _comment = value;
            });
          },
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed:
              _rating == 0 ? null : () => widget.onSubmit(_rating, _comment),
          child: const Text('Bewertung absenden'),
        ),
      ],
    );
  }
}
