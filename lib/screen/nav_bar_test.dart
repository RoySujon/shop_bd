// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_bd/screen/home.dart';
import 'package:shop_bd/screen/login_page.dart';
import 'package:shop_bd/utls/const.dart';

import '../utls/widgets.dart';
import '../utls/widgets/custom_cart.dart';
// import 'package:shop_bd/screen/homepage.dart';
// import 'package:shop_bd/utls/const.dart';

class NavBarButton extends StatefulWidget {
  const NavBarButton({super.key});

  @override
  State<NavBarButton> createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  int _selectedTab = 0;

  List _pages = [
    // HomePgae(),
    HOME(),
    LoginPage(),
    Scaffold(
        // backgroundColor: kMainColor,
        body: Center(
      child: Icon(Icons.abc),
    )),
    Center(
      child: Text("Contact"),
    ),
    HOME(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // backgroundColor: Colors.red.withOpacity(1),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kMainColor,
        onPressed: () {},
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: kMainColor,
        icons: List.generate(
          4,
          (index) => Icons.show_chart,
        ),
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
      body: _pages[_bottomNavIndex],
    );
  }

  int _bottomNavIndex = 4;
}
