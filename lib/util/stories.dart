// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class stories extends StatelessWidget {
  const stories({super.key, required this.pathImage,  this.height, this.width});
  final String pathImage;
  final height;
  final width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
        child: ClipOval(child: Image.asset(pathImage,fit: BoxFit.cover,)),
      ),
    );
  }
}
