// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shop_bd/screen/home.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  //State class

  int _page = 0;
  List<Widget> pageList = [
    HOME(),
    SafeArea(
      child: Scaffold(
        body: Text('data'),
      ),
    ),
    Container(
      color: Colors.green,
    ),
    SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Text('data'),
      ),
    ),
  ];
  // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      // bottomNavigationBar: CurvedNavigationBar(
      //   height: 75,
      //   buttonBackgroundColor: Colors.green,
      //   animationDuration: Duration(milliseconds: 300),
      //   // animationCurve: Curves.slowMiddle,
      //   // buttonBackgroundColor: Colors.transparent,
      //   // color: Colors.transparent,
      //   color: Colors.red,

      //   backgroundColor: Colors.transparent,

      //   key: _bottomNavigationKey,
      //   items: <Widget>[
      //     Icon(Icons.add, size: 30),
      //     Icon(Icons.list, size: 30),
      //     Icon(Icons.list, size: 30),
      //     Icon(Icons.compare_arrows, size: 30),
      //   ],
      //   onTap: (index) {
      //     setState(() {
      //       _page = index;
      //     });
      //   },
      // ),
      // body: pageList[_page],
    );
  }
}
