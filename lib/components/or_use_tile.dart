import 'package:flutter/material.dart';

class OrUseTile extends StatelessWidget {
  final String imagePath;

  const OrUseTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[200],
      ),
      child: Image.asset(imagePath, height: 40),
    );
  }
}
