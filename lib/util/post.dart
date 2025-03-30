// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagrame_ui/util/stories.dart';

class post extends StatelessWidget {
  const post({super.key, required this.nameUser});
  final String nameUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [stories(), Text(nameUser)],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.menu),
              ),
            ],
          ),
        ),
        Container(
          height: 330,
          color: Colors.grey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/heart.png',
                  width: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset('assets/chat.png', width: 30),
                SizedBox(
                  width: 10,
                ),
                Image.asset('assets/share.png', width: 25),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/save-instagram.png', width: 25),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text.rich(TextSpan(
              children: [
                TextSpan(
                  text: 'Liked By',
                ),
                TextSpan(
                  text: ' bennsir09 ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'and',
                ),
                TextSpan(
                  text: '  others',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: 'StopWatch ',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    'StopWatch is a Flutter timer app with a sleek UI, lap recorder, and dark mode, built for Android & iOS.'),
          ])),
        )
      ],
    );
  }
}
