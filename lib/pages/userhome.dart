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
  List people = [
    //[nom,Image],
    ['bennssir 09','assets/img/4dejvp_364e565941c08fb5b137a1312196e022509225fb.jpg'],
    ['ahemd','assets/img/b4fnn5_64cbcf64bff05ec131db506148f5698c7f5f44e1.jpg'],
    ['iheeb','assets/img/bzfn7l_355139b23509123f71d72582567b89d415750f35.jpg'],
    ['rania','assets/img/d4mk0j_a97f811de5568a31395386e56b8993a176f08533.jpg'],
    ['taha08','assets/img/hbpzaq_5d7ea7d18bd1382c0b21834949cda96062c6c6f9.jpg'],
    ['hamza','assets/img/lyzpfo_89f4e4fc30121f9ace62bc94df1b208aca28f0f8.jpg']
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
                    fontFamily: 'font',
                    fontSize: 40,
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
                      stories(pathImage: people[index][1],height: 70.0,width: 70.0,),
                      Text(people[index][0]),
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
            return post(nameUser: people[index][0],pathImage: people[index][1],pathImage_post: people[index][1],);
          }))
        ],
      ),
    ));
  }
}
