import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MYDrawer extends StatelessWidget {
  const MYDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        // padding: const EdgeInsets.all(0),
        children: [
          Stack(
            children: [
              Container(
                color: Colors.deepPurple,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 16,
                      top: MediaQuery.of(context).padding.top * 1.2,
                      bottom: MediaQuery.of(context).padding.top),
                  child: Column(
                    children: [
                      const Center(
                        child: Image(
                          image: NetworkImage(
                              'https://nittoponno.shop/logo/logo.png'),
                          height: 50,
                        ),
                      ),
                      Row(children: [
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(width: 16),
                        Text(
                          '01723330194',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                      SizedBox(height: 10),
                      Row(children: [
                        Icon(
                          Icons.email,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(width: 16),
                        Text(
                          'ngicon123@icon.com',
                          style: TextStyle(color: Colors.white),
                        ),
                      ]),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            ],
          ),

          /*  const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                  accountName: Text(
                    "Abhishek Mishra",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("goutomroy770@gmail.com"),
                  currentAccountPictureSize: Size.square(100),
                  currentAccountPicture: Image(
                    image:
                        NetworkImage('https://nittoponno.shop/logo/logo.png'),
                    // height: 100,
                  ) //circleAvatar
                  ), //UserAccountDrawerHeader
            ), */
          // FutureBuilder<List<Exercises>>(
          //     builder: (context, snapshot) {
          //       if (snapshot.connectionState == ConnectionState.waiting) {
          //         return Center(child: CircularProgressIndicator());
          //       } else if (snapshot.hasError) {
          //         return Text('Something Error');
          //       } else if (snapshot.data == null) {
          //         return Text('Data is null');
          //       }
          //       return ListView(
          //         children: List.generate(
          //           snapshot.data!.length,
          //           (index) => ExpansionTile(
          //               title: Text(snapshot.data![index].id.toString())),
          //         ),
          //       );
          //     },
          //     future: fetchData()),
          Column(
            children: basicTiles
                .map(
                  (e) => e.tiles.isEmpty
                      ? ListTile(
                          title: Text(e.title),
                        )
                      : ExpansionTile(
                          // trailing: SizedBox.shrink(),
                          tilePadding: EdgeInsets.only(left: 16),
                          leading: Icon(Icons.snapchat),

                          // collapsedTextColor: Colors.red,
                          // textColor: Colors.red,

                          title: Text(e.title.toString()),
                          children: e.tiles
                              .map((e) => e.tiles.isEmpty
                                  ? Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: ListTile(
                                        // onTap: () => Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           homep(tile: e),
                                        //     )),
                                        title: Text(e.title),
                                      ),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: ExpansionTile(
                                        title: Text(e.title.toString()),
                                        // trailing: SizedBox.shrink(),
                                        tilePadding: EdgeInsets.only(left: 16),
                                        leading: Icon(Icons.recycling_outlined),
                                        children: e.tiles
                                            .map((e) => e.tiles.isEmpty
                                                ? Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 32),
                                                    child: ListTile(
                                                      title: Text(e.title),
                                                    ),
                                                  )
                                                : ExpansionTile(
                                                    title: Text(e.title)))
                                            .toList(),
                                      ),
                                    ))
                              .toList(),
                        ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}

class BasicTile {
  final String title;
  final List<BasicTile> tiles;
  const BasicTile({
    required this.title,
    this.tiles = const [],
  });
}

final basicTiles = <BasicTile>[
  const BasicTile(title: 'Fruits', tiles: [
    BasicTile(title: 'Apple'),
    BasicTile(title: 'Orange'),
    BasicTile(title: 'Banana'),
    BasicTile(title: 'Watermelon')
  ]),
  const BasicTile(title: 'Continent', tiles: [
    BasicTile(title: 'Afghanistan'),
    BasicTile(title: 'India', tiles: [
      BasicTile(title: 'Kolkata'),
      BasicTile(title: 'Delhi'),
    ]),
  ]),
];// BasicTile