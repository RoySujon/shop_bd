import 'dart:async';
// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shop_bd/model/model.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_bd/utls/const.dart';
import 'package:shop_bd/utls/widgets.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  final cartList = CartModel.ItemList();
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
      appBar: AppBar(
        title: Text('data'),
      ),
      body: GridView.builder(
        itemCount: cartList.length,
        shrinkWrap: true,
        // semanticChildCount: ,

        // scrollDirection: Axis.horizontal,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: .72,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          // mainAxisExtent: 400,
        ),
        itemBuilder: (context, index) => CustomCard(
            imLink: cartList[index].imgLink,
            discount: cartList[index].discount?.toDouble() == null
                ? 0
                : cartList[index].discount!.toDouble(),
            name: cartList[index].title,
            price: cartList[index].total,
            currentPrice: cartList[index].discount?.toDouble() == null
                ? cartList[index].total
                : cartList[index].total -
                    (cartList[index].total *
                        (cartList[index].discount! / 100))),
      ),
    );
  }

  CustomCard(
      {required String imLink,
      required String name,
      required double discount,
      required double price,
      required double currentPrice}) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Image.network(
                imLink,
                // height: 400,
                // scale: .6,
                // width: double.infinity,
                // width: double.infinity,
                fit: BoxFit.cover,
              ),
              discount != 0
                  ? Positioned(
                      right: 8,
                      top: 8,
                      // bottom: 0,
                      child: Container(
                        // padding: EdgeInsets.all(8),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          color: Colors.redAccent,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.red,
                                offset: Offset(-1, 1),
                                blurRadius: 1,
                                blurStyle: BlurStyle.outer)
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SubtitleText14(
                              '${discount.toStringAsFixed(0)}%',
                              fs: 9,
                            ),
                            // SizedBox(height: 1),
                            SubtitleText14(
                              'OFF',
                              // clr: Colors.white,
                              fs: 10,
                            ),
                          ],
                        ),
                      ),
                    )
                  : SizedBox(),
              Positioned(bottom: 8, right: 8, child: CustomCountButton())
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingText(
                  name,
                  mL: 1,
                  of: TextOverflow.ellipsis,
                  clr: kBlack,
                ),
                // SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubtitleText12(
                      '\$${currentPrice}',
                      fs: 14,
                      clr: Colors.redAccent,
                    ),
                    discount != 0
                        ? SubtitleText12(
                            '\$${price}',
                            td: TextDecoration.lineThrough,
                            clr: Colors.grey,
                          )
                        : SizedBox()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column CustomCountButton() {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              // shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                    color: Colors.red,
                    offset: Offset(-1, 1),
                    blurRadius: !isClicked == true ? .1 : 0,
                    blurStyle: BlurStyle.outer)
              ],
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.red)),
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
                          color: Colors.red,
                          size: 16,
                        )),
                !isClicked && index <= 0
                    ? SizedBox()
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: SubtitleText12(
                          '${index}',
                          fs: 10,
                        ),
                      ),
                InkWell(
                    // statesController: controller,
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
                      !isClicked
                          ? Icons.shopping_cart_checkout_sharp
                          : Icons.add,
                      color: Colors.red,
                      size: 16,
                    )),
              ],
            ),
          ),
        )
      ],
    );
  }

  // final controller = MaterialStatesController();
  bool isClicked = false;
  int index = 0;
}
