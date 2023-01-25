import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_bd/screen/home.dart';
import 'package:shop_bd/screen/homepage.dart';
import 'package:shop_bd/simple_data/data_set.dart';

class SimpleScreen extends StatefulWidget {
  const SimpleScreen({super.key});

  @override
  State<SimpleScreen> createState() => _SimpleScreenState();
}

class _SimpleScreenState extends State<SimpleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          IconButton(
              onPressed: () => setState(() {
                    ValueCount.counts.count = (ValueCount.counts.count! + 1);
                  }),
              icon: Icon(Icons.add)),
          Text('${ValueCount.counts.count}'),
          InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HOME(),
                  )),
              child: Icon(Icons.remove))
        ],
      ),
    );
  }
}
