import 'package:flutter/material.dart';
import 'package:shop_bd/screen/homepage.dart';

class HOME extends StatefulWidget {
  const HOME({super.key});

  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: RefreshIndicator(
        backgroundColor: Colors.amber,
        color: Colors.red,
        onRefresh: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePgae(),
            )),
        child: Stack(
          children: [
            CustomScrollView(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              controller: _scrollController,
              slivers: [
                SliverAppBar(
                  // toolbarHeight: 100,
                  // expandedHeight: 100,
                  title: Image.network('https://nittoponno.shop/logo/logo.png',
                      color: Colors.white, height: 40),
                  centerTitle: true,
                  backgroundColor: Colors.deepPurpleAccent.shade100,
                  // floating: true,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: IconButton(
                        onPressed: () {
                          quantity = quantity + 50;
                          setState(() {});
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (_) => CartScreen()));
                        },
                        icon: Stack(clipBehavior: Clip.none, children: [
                          Icon(Icons.shopping_cart),
                          quantity == 0
                              ? Text('')
                              : Positioned(
                                  top: -4,
                                  right: -4,
                                  child: CircleAvatar(
                                    radius: quantity < 1000 ? 7 : 10,
                                    backgroundColor: quantity > 10
                                        ? Colors.green
                                        : Colors.red,
                                    child: Text(
                                      quantity.toString(),
                                      style: TextStyle(
                                          fontSize: 8, color: Colors.white),
                                    ),
                                  )),
                        ]),
                      ),
                    ),
                  ],
                  leading: Icon(Icons.abc),
                ),
                SliverPersistentHeader(
                  floating: true,
                  pinned: true,
                  delegate: SliverDelegate(
                      child: Container(
                    color: Colors.amber,
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      // margin: EdgeInsets.all(10),
                      // height: 70,
                      color: Colors.grey,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search...',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green))),
                      ),
                    ),
                  )),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Column(
                        children:
                            List.generate(200, (index) => Icon(Icons.abc)),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }

  int quantity = 0;
}

class SliverDelegate extends SliverPersistentHeaderDelegate {
  Widget child;
  SliverDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 70;

  @override
  double get minExtent => 70;

  @override
  bool shouldRebuild(SliverDelegate oldDelegate) {
    return oldDelegate.maxExtent != 70 ||
        oldDelegate.minExtent != 70 ||
        child != oldDelegate.child;
  }
}
