import 'dart:io';

import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final File? image;
  final VoidCallback onTap;

  const ProfilePicture({
    super.key,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: const CircleAvatar(
          radius: 50,
          foregroundImage: NetworkImage(
            'https://www.gravatar.com/avatar/?d=identicon',
          ),
        ),
      ),
    );
  }
}
