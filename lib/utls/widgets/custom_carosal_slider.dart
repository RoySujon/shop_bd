import 'package:flutter/material.dart';

import '../const.dart';

class CustomCarosalSlide extends StatelessWidget {
  const CustomCarosalSlide({
    Key? key,
    required this.index,
    required this.imgLink,
  }) : super(key: key);
  final int index;
  final String imgLink;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 25,
          // top: 0,
          left: 5,
          right: 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              imgLink,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 60,
          left: 60,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: index.isOdd ? kMainColor : kTableColor,
            ),
            height: 50,
            child: Center(
              child: Image.network('https://nittoponno.shop/logo/logo.png'),
            ),
          ),
        )
      ],
    );
  }
}
