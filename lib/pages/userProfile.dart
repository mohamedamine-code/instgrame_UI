// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagrame_ui/util/post.dart';
import 'package:instagrame_ui/util/stories.dart';

class userProfile extends StatelessWidget {
  const userProfile({super.key});

  @override
  Widget build(BuildContext context) {
    List people = [
      //[nom,Image],
      [
        'bennssir 09',
        'assets/img/4dejvp_364e565941c08fb5b137a1312196e022509225fb.jpg'
      ],
      [
        'ahemd',
        'assets/img/b4fnn5_64cbcf64bff05ec131db506148f5698c7f5f44e1.jpg'
      ],
      [
        'iheeb',
        'assets/img/bzfn7l_355139b23509123f71d72582567b89d415750f35.jpg'
      ],
      [
        'rania',
        'assets/img/d4mk0j_a97f811de5568a31395386e56b8993a176f08533.jpg'
      ],
      [
        'taha08',
        'assets/img/hbpzaq_5d7ea7d18bd1382c0b21834949cda96062c6c6f9.jpg'
      ],
      [
        'hamza',
        'assets/img/lyzpfo_89f4e4fc30121f9ace62bc94df1b208aca28f0f8.jpg'
      ]
    ];
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mohamed Amine',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/more.png',
                        width: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.menu,
                        size: 33,
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  stories(
                    pathImage:
                        'assets/img/pds5ja_a7a5dd6247a00231fe4bada00fd7b5fad0a950da.jpg',
                    width: 100.0,
                    height: 100.0,
                  ),
                  Column(
                    children: [
                      Text(
                        '700',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Posts'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '3930',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Followers'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '104',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Following'),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bennsir09'),
                    Text('El Hamdouleh , I am different.'),
                    Text(
                      'https://www.youtube.com/watch?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(128, 189, 189, 189),
                    borderRadius: BorderRadius.circular(10)),
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Professional Dashbord',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '1.9K views in the last 30days',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric( vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(128, 189, 189, 189)),
                      child: Center(child: Text('Edit profile')),
                      width: 100,
                    ),
                    
                    Container(
                      padding:
                          EdgeInsets.symmetric( vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(128, 189, 189, 189)),
                      child: Center(child: Text('Share profile')),
                      width: 100,
                    ),
                    
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(128, 189, 189, 189)),
                      child: Text('Contact'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 130,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: people.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          stories(
                            pathImage: people[index][1],
                            height: 80.0,
                            width: 80.0,
                          ),
                          Text(people[index][0]),
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: 500,
                child: DefaultTabController(
                  length: 3, // Number of tabs
                  child: Scaffold(
                    appBar: AppBar(
                      title: TabBar(
                        tabs: [
                          Icon(Icons.grid_on_rounded),
                          Image.asset('assets/reel.png',
                              height: 24), // Adjust size if needed
                          Image.asset('assets/user.png', height: 24),
                        ],
                      ),
                    ),
                    body: TabBarView(
                      children: [
                        
                        ListView.builder(itemBuilder: (context, index) {
                          return post(nameUser: people[index][0],pathImage: people[index][1],pathImage_post: people[index][1],);
                        }),
                        GridView.builder(
                            itemCount: people.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(
                                  width: 100,
                                  height: 70,
                                  child: Image.asset(
                                    people[index][1],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            }),
                        
                      GridView.builder(
                            itemCount: people.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(
                                  width: 100,
                                  height: 70,
                                  child: Image.asset(
                                    people[index][1],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
