import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final String imagePath;

  const BackgroundWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
