// import 'dart:async';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:shop_bd/screen/form.dart';
import 'package:shop_bd/screen/home.dart';
// import 'package:shop_bd/screen/login_page.dart';
import 'package:shop_bd/screen/signup_page.dart';
import 'package:shop_bd/utls/const.dart';

class HomePgae extends StatefulWidget {
  const HomePgae({super.key});

  @override
  State<HomePgae> createState() => _HomePgaeState();
}

class _HomePgaeState extends State<HomePgae> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List<IconData> iconList = [
    Icons.menu,
    Icons.person,
    Icons.person,
    Icons.person,
  ];
  // int _bottomNavIndex = 0;
  int index = 5;
  @override
  @override
  Widget build(BuildContext context) {
    print('abc');
    // print(index);
    return Scaffold(
      endDrawer: Drawer(
        child: Text('GOUTOM'),
      ),
      key: _key,
      extendBody: true,
      // primary: true,
      resizeToAvoidBottomInset: false,
      // persistentFooterButtons: [Text('data')],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: kMainColor,
        // elevation: ,
        // gapWidth: 100,
        iconSize: 40,
        inactiveColor: kHoverColor,
        activeColor: kWhite,
        // splashColor: Colors.amber,
        borderColor: kBlack,
        // splashColor: Colors.greenAccent,

        // iconSize: 10,
        // inactiveColor: Colors.red,
        icons: iconList,
        activeIndex: index,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) {
          setState(() {
            index == 0 ? _key.currentState!.openEndDrawer() : null;
            this.index = index;
          });
        },
        //other params
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(
            side: BorderSide(
                width: 1, color: index == 5 ? Colors.red : kMainColor)),
        // foregroundColor: Colors.amber,
        child: Icon(
          index == 0 | 5 ? Icons.favorite : Icons.favorite_border,
          color: index == 5 ? kWhite : kMainColor,
        ),
        backgroundColor: index == 5 ? kMainColor : Colors.transparent,
        elevation: 0,

        onPressed: () {
          setState(() {
            index = 5 | 0;
          });
        },

        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: buildPage(),
    );
  }

//Switch case
  buildPage() {
    switch (index) {
      case 1:
        return InputForm();
      case 2:
        return SignUpPage();
      case 3:
        return SignUpPage();
      case 0:
      // return buildPage();
      case 5:
      default:
        return HOME();
    }
  }
}
