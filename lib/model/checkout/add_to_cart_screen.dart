import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_bd/utls/const.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  late Timer timer;
  @override
  // void dispose() async {
  //   // TODO: implement dispose
  //   super.dispose();
  //   controller.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Stack(children: [
            Positioned(
              bottom: 0,
              // left: 0,
              right: 0,
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        border: Border.all(width: 2, color: kMainColor)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          !isClicked
                              ? SizedBox()
                              : InkWell(
                                  // statesController: controller,
                                  onTapUp: (details) async {
                                    print(details);
                                    timer = Timer(
                                      Duration(seconds: 3),
                                      () => setState(() {
                                        isClicked = false;
                                      }),
                                    );
                                  },
                                  onTap: () {
                                    if (index > 0) index--;
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    color: kMainColor,
                                  )),
                          !isClicked
                              ? SizedBox()
                              : Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text('${index}'),
                                ),
                          InkWell(
                              statesController: controller,
                              // statesController: controller,
                              onTapUp: (details) async {
                                // isClicked = false;
                                timer = Timer(
                                  Duration(seconds: 3),
                                  () => setState(() {
                                    isClicked = false;
                                  }),
                                );
                              },
                              // minWidth: 50,
                              onTap: () {
                                isClicked = true;
                                // await Timer(
                                //     Duration(milliseconds: 800),
                                //     () => setState(() {
                                //           // isClicked = false;
                                //         }));
                                index++;
                                // isClicked ;
                                setState(() {});
                              },
                              child: Icon(
                                !isClicked ? Icons.shop : Icons.add,
                                color: kMainColor,
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
          height: 200,
          width: 200,
          color: kHoverColor,
        ),
      ),
    );
  }

  final controller = MaterialStatesController();
  bool isClicked = false;
  int index = 0;
}
