import 'package:flutter/material.dart';
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
        appBar: AppBar(),
        drawer: NavigationDrawer(),
        body: ListView.builder(
          itemCount: listOfData.length,
          itemBuilder: (context, index) => ListTile(
            onTap: () {
              val.contains(index) ? val.remove(index) : val.add(index);
              setState(() {});
              print(val);
            },
            iconColor: Colors.red,
            trailing: Icon(
                val.contains(index) ? Icons.favorite : Icons.favorite_border),
            leading: Text(listOfData[index].details),
            title: Text(val.length.toString()),
            // trailing: Row(
            //   children: [],
            // ),
          ),
        ),
      ),
    );
  }

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
