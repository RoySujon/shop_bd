import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigationButton extends StatefulWidget {
  CustomNavigationButton({
    super.key,
  });
  // final int index;

  @override
  State<CustomNavigationButton> createState() => _CustomNavigationButtonState();
}

class _CustomNavigationButtonState extends State<CustomNavigationButton> {
  List<IconData> iconList = [
    Icons.person,
    Icons.person,
    Icons.person,
    Icons.person,
  ];
  // int _bottomNavIndex = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    // final y = FinalData();

    return AnimatedBottomNavigationBar(
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
    );
  }
}
