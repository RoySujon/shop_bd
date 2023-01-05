import 'dart:async';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shop_bd/screen/home.dart';
import 'package:shop_bd/screen/login_page.dart';
import 'package:shop_bd/screen/signup_page.dart';

class HomePgae extends StatefulWidget {
  const HomePgae({super.key});

  @override
  State<HomePgae> createState() => _HomePgaeState();
}

class _HomePgaeState extends State<HomePgae> {
  List<IconData> iconList = [
    Icons.person,
    Icons.person,
    Icons.person,
    Icons.person,
  ];
  // int _bottomNavIndex = 0;
  int index = 5;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(
    //   Duration(milliseconds: 1500),
    //   () => Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => buildPage(),
    //       )),
    // );
  }

  @override
  Widget build(BuildContext context) {
    print('abc');
    // print(index);
    return Scaffold(
      bottomNavigationBar: AnimatedBottomNavigationBar(
        // elevation: ,
        // gapWidth: 100,
        iconSize: 40,

        activeColor: Colors.deepPurpleAccent.shade100,
        // splashColor: Colors.amber,
        borderColor: Colors.green,
        // splashColor: Colors.greenAccent,

        // iconSize: 10,
        // inactiveColor: Colors.red,
        icons: iconList,
        activeIndex: index,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
        //other params
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:
            index == 5 ? Colors.deepPurpleAccent.shade100 : Colors.grey,
        onPressed: () {
          index = 5;
          setState(() {});
        },

        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: buildPage(),
    );
  }

  buildPage() {
    switch (index) {
      case 1:
        return SignUpPage();
      case 2:
        return SignUpPage();
      case 3:
        return SignUpPage();
      case 0:
        return LoginPage();
      case 5:
      default:
        return HOME();
    }
  }
}
