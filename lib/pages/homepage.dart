import 'package:flutter/material.dart';
import 'package:instagrame_ui/pages/userAdd.dart';
import 'package:instagrame_ui/pages/userProfile.dart';
import 'package:instagrame_ui/pages/userRells.dart';
import 'package:instagrame_ui/pages/userSearch.dart';
import 'package:instagrame_ui/pages/userhome.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int cureentPage = 0;
  List<Widget> Mypages = [
    userhome(),
    userSearch(),
    userAdd(),
    userRells(),
    userProfile(),
    
  ];

  void togglepage(value) {
    setState(() {
      cureentPage = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Mypages[cureentPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          togglepage(value);
        },
        iconSize: 0,
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 11.0),
                child: Image.asset(
                  'assets/home.png',
                  width: 30,
                  height: 30,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/search.png', width: 30, height: 30),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/more.png', width: 30, height: 30),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/reel.png', width: 30, height: 30),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/user.png', width: 30, height: 30),
              label: ''),
        ],
      ),
    );
  }
}
