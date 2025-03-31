// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagrame_ui/util/box_share.dart';

class userRells extends StatelessWidget {
  const userRells({super.key});

  @override
  Widget build(BuildContext context) {
      List people = [
    //[nom,Image],
    ['bennssir 09','assets/img/4dejvp_364e565941c08fb5b137a1312196e022509225fb.jpg'],
    ['ahemd','assets/img/b4fnn5_64cbcf64bff05ec131db506148f5698c7f5f44e1.jpg'],
    ['iheeb','assets/img/bzfn7l_355139b23509123f71d72582567b89d415750f35.jpg'],
    ['rania','assets/img/d4mk0j_a97f811de5568a31395386e56b8993a176f08533.jpg'],
    ['hamza','assets/img/wyamjz_14981b4e764d2f9d7fbde35304f79ec495784207.jpg'],
    ['taha08','assets/img/hbpzaq_5d7ea7d18bd1382c0b21834949cda96062c6c6f9.jpg'],
    ['hamza','assets/img/pds5ja_a7a5dd6247a00231fe4bada00fd7b5fad0a950da.jpg'],
    ['hamza','assets/img/lyzpfo_89f4e4fc30121f9ace62bc94df1b208aca28f0f8.jpg'],
    ['hamza','assets/img/wyamjz_14981b4e764d2f9d7fbde35304f79ec495784207.jpg'],
    ['hamza','assets/img/wyamjz_14981b4e764d2f9d7fbde35304f79ec495784207.jpg'],
    ['hamza','assets/img/wyamjz_14981b4e764d2f9d7fbde35304f79ec495784207.jpg'],
    ['taha08','assets/img/hbpzaq_5d7ea7d18bd1382c0b21834949cda96062c6c6f9.jpg'],
    ['taha08','assets/img/hbpzaq_5d7ea7d18bd1382c0b21834949cda96062c6c6f9.jpg'],
    ['iheeb','assets/img/bzfn7l_355139b23509123f71d72582567b89d415750f35.jpg'],
    ['ahemd','assets/img/b4fnn5_64cbcf64bff05ec131db506148f5698c7f5f44e1.jpg'],
    ['ahemd','assets/img/b4fnn5_64cbcf64bff05ec131db506148f5698c7f5f44e1.jpg'],
    ['iheeb','assets/img/bzfn7l_355139b23509123f71d72582567b89d415750f35.jpg'],
    ['ahemd','assets/img/b4fnn5_64cbcf64bff05ec131db506148f5698c7f5f44e1.jpg'],
    ['ahemd','assets/img/b4fnn5_64cbcf64bff05ec131db506148f5698c7f5f44e1.jpg'],
    ['hamza','assets/img/wyamjz_14981b4e764d2f9d7fbde35304f79ec495784207.jpg'],
  ];
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10)),
                  height: 40,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Image.asset(
                          'assets/search.png',
                          height: 25,
                        ),
                      ),
                      Text('Search'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    itemCount: people.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return box_share(pathImage_Search: people[index][1],);
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
