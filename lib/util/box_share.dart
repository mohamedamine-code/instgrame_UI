import 'package:flutter/material.dart';

class box_share extends StatefulWidget {
  const box_share({super.key, required this.pathImage_Search});
  final String pathImage_Search;

  @override
  State<box_share> createState() => _box_shareState();
}

class _box_shareState extends State<box_share> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 100,
        child: Image.asset(widget.pathImage_Search,fit: BoxFit.cover,),
      ),
    );
  }
}
