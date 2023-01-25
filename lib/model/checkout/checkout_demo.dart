import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shop_bd/screen/form.dart';
import 'package:shop_bd/screen/home.dart';
import 'package:shop_bd/screen/homepage.dart';
import 'package:shop_bd/utls/const.dart';
import 'package:shop_bd/utls/widgets.dart';
import 'package:collection/collection.dart';
import '../checkout_data.dart';

class CheckoutDemoScreen extends StatefulWidget {
  const CheckoutDemoScreen({super.key});

  @override
  State<CheckoutDemoScreen> createState() => _CheckoutDemoScreenState();
}

class _CheckoutDemoScreenState extends State<CheckoutDemoScreen> {
  List<int> val = [];
  final listOfData = CheckOutData.listOfData;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showMyDialog();
        return shouldPop ?? false;
      },
      child: Scaffold(
        extendBody: true,
        /* floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: FloatingActionButton(
            onPressed: () {},
          ),
        ), */
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: kBlack.withOpacity(1),
                    offset: Offset(0, 1),
                    blurRadius: 1)
              ],
              borderRadius: BorderRadius.circular(16),
              color: Colors.purple.shade100,
            ),
            constraints:
                BoxConstraints(minHeight: 50, minWidth: double.infinity),
            // padding: EdgeInsets.symmetric(horizontal: 16),
            // height: 50,
            // width: double.infinity,

            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () => setState(() {
                      index = 1;
                    }),
                    child: Icon(
                      index == 1
                          ? Icons.favorite_border_outlined
                          : Icons.favorite,
                      color: index == 1 ? kMainColor : kWhite,
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      child: Icon(
                        Icons.home_outlined,
                        color: kWhite,
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                        // height: double.infinity,
                        constraints: BoxConstraints(minHeight: 50),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: kMainColor,
                                offset: Offset(1, 1),
                                blurRadius: 1)
                          ],
                          borderRadius: BorderRadius.circular(16),
                          color: kMainColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            // mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              HeadingText('Checkout'),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    // visualDensity: VisualDensity.standard,
                                    backgroundColor: Colors.purple.shade200,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    index.toString(),
                                    style: TextStyle(color: kWhite),
                                  ))
                            ],
                          ),
                        ))),
              ],
            ),
          ),
        ),
        // appBar: AppBar(),
        drawer: NavigationDrawer(),
        body: pages[index],
      ),
    );
  }

  int index = 0;
  List<Widget> pages = [HOME(), InputForm()];
  showMyDialog() => showDialog(
      builder: (BuildContext context) => AlertDialog(
            title: Text('Do you want to exit!'),
            actionsAlignment: MainAxisAlignment.spaceBetween,
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: Text('NO')),
              // Spacer(),
              // SizedBox(width: 100),
              TextButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: Text('YES')),
            ],
          ),
      context: context);
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        // elevation: 0,
        // backgroundColor: kMainColor,
        // shape: Border.all(width: 1, color: Colors.green),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [buildHeader(context), buildMenuItems(context)],
        ),
      );

  buildHeader(BuildContext context) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          color: kMainColor,
          // color: Colors.white,
        ),
        padding: EdgeInsets.only(
            top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
            ),
            HeadingText(
              'GOUTOM ROY',
              fs: 36,
            ),
            // SizedBox(height: 10),
            HeadingText('goutomroy770@gmail.com')
          ],
        ),
      );
  buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(runSpacing: 16, alignment: WrapAlignment.center, children: [
          ListTile(
            onTap: () {},
            leading: Icon(Icons.home_outlined),
            title: Text(
              'Home',
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.favorite_outline_outlined),
            title: Text(
              'Favorite',
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.workspaces_outline),
            title: Text(
              'Work Spaces',
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.update),
            title: Text(
              'updates',
            ),
          ),
        ]),
      );
}
