// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagrame_ui/util/post.dart';
import 'package:instagrame_ui/util/stories.dart';

class userhome extends StatefulWidget {
  const userhome({super.key});

  @override
  State<userhome> createState() => _userhomeState();
}

class _userhomeState extends State<userhome> {
  List<String> people = [
    //[nom,Image],
    'bennssir 09',
    'ahemd',
    'iheeb',
    'rania',
    'taha08',
    'hamza',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Instgrame',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.add,
                    size: 27,
                    color: Colors.black,
                  ),
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
                  Image.asset(
                    'assets/share.png',
                    width: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
                itemCount: people.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      stories(),
                      Text(people[index]),
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
            return post(nameUser: people[index],);
          }))
        ],
      ),
    ));
  }
}
