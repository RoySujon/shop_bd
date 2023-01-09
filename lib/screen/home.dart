// import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_bd/screen/homepage.dart';
import 'package:shop_bd/utls/const.dart';
import 'package:shop_bd/utls/widgets.dart';
import 'package:shop_bd/utls/widgets/custom_cart.dart';
// import 'package:shop_bd/utls/widgets/custom_text_field.dart';

import '../model/model.dart';
import '../utls/widgets/custom_carosal_slider.dart';

class HOME extends StatefulWidget {
  const HOME({super.key});

  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  final ScrollController _scrollController = ScrollController();
  final _searchController = TextEditingController();
  final itmemList = CartModel.ItemList();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SafeArea(
              bottom: false,
              child: RefreshIndicator(
                // backgroundColor: kHoverColor,
                // triggerMode: RefreshIndicatorTriggerMode.anywhere,
                // semanticsLabel: 'Refresh',
                // semanticsValue: 'S',
                // displacement: 100,

                color: kMainColor,
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
                          // brightness: Brightness.light,
                          systemOverlayStyle: SystemUiOverlayStyle(
                              statusBarBrightness: Brightness.light),
                          // toolbarHeight: 100,
                          // expandedHeight: 100,
                          title: Image.network(
                              'https://nittoponno.shop/logo/logo.png',
                              color: Colors.white,
                              height: 40),
                          centerTitle: true,
                          // backgroundColor: Colors.deepPurpleAccent.shade100,
                          // floating: true,
                          actions: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: IconButton(
                                onPressed: () {
                                  totalQuantity = totalQuantity + 50;
                                  setState(() {});
                                  // Navigator.push(context,
                                  //     MaterialPageRoute(builder: (_) => CartScreen()));
                                },
                                icon: Stack(clipBehavior: Clip.none, children: [
                                  Icon(Icons.shopping_cart),
                                  totalQuantity == 0
                                      ? Text('')
                                      : Positioned(
                                          top: -4,
                                          right: -4,
                                          child: CircleAvatar(
                                            radius:
                                                totalQuantity < 1000 ? 7 : 10,
                                            backgroundColor: totalQuantity > 10
                                                ? Colors.green
                                                : Colors.red,
                                            child: Text(
                                              totalQuantity.toString(),
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  color: Colors.white),
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
                              child: AppBar(
                            // backgroundColor: kHoverColor,
                            elevation: 0,
                            centerTitle: true,
                            toolbarHeight: 70,
                            automaticallyImplyLeading: false,
                            actions: [
                              Padding(
                                padding: const EdgeInsets.only(right: 12.0),
                                child: IconButton(
                                  onPressed: () {
                                    totalQuantity = totalQuantity + 50;
                                    setState(() {});
                                    // Navigator.push(context,
                                    //     MaterialPageRoute(builder: (_) => CartScreen()));
                                  },
                                  icon:
                                      Stack(clipBehavior: Clip.none, children: [
                                    Icon(Icons.shopping_cart),
                                    totalQuantity == 0
                                        ? Text('')
                                        : Positioned(
                                            top: -4,
                                            right: -4,
                                            child: CircleAvatar(
                                              radius:
                                                  totalQuantity < 1000 ? 7 : 10,
                                              backgroundColor:
                                                  totalQuantity > 10
                                                      ? Colors.green
                                                      : Colors.red,
                                              child: Text(
                                                totalQuantity.toString(),
                                                style: TextStyle(
                                                    fontSize: 8,
                                                    color: Colors.white),
                                              ),
                                            )),
                                  ]),
                                ),
                              )
                            ],
                            title: TextFormField(
                              // textInputAction: TextInputAction.continueAction,
                              // autocorrect: true,
                              // smartDashesType: SmartDashesType.enabled,

                              cursorColor: Colors.deepPurple,
                              controller: _searchController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                // border: InputBorder.none,
                                hintText: 'Search Products...',
                                hintMaxLines: 1,
                                // label: SubtitleText12('dkdk'),
                                // counterText: 'GOUTOm',
                                // hintTextDirection: TextDirection.rtl,
                                // alignLabelWithHint: true,
                                // hintTextDirection: TextDirection.rtl,
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.center,

                                hintStyle: GoogleFonts.nunito(
                                  color: Colors.black45,
                                  fontStyle: FontStyle.italic,
                                ),
                                // fillColor: Colors.black12,
                                // filled: true,
                                contentPadding:
                                    EdgeInsets.only(left: 20, right: 50),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: kMainColor,
                                    ),
                                    child: Icon(Icons.search, color: kWhite),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.green.shade100)),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.deepPurple),
                                ),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.redAccent)),
                              ),
                            ),
                          )),
                        ),
                        SliverToBoxAdapter(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: CarouselSlider(
                                        items: List.generate(
                                          itmemList.length,
                                          (index) => CustomCarosalSlide(
                                            index: index,
                                            imgLink: itmemList[index]
                                                .sliderImg
                                                .toString(),
                                          ),
                                        ),
                                        options: CarouselOptions(
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .width >
                                                  MediaQuery.of(context)
                                                      .size
                                                      .height
                                              ? 500
                                              : 200,
                                          // animateToClosest: true,
                                          // aspectRatio: .1,
                                          viewportFraction: .9,
                                          initialPage: 0,
                                          enableInfiniteScroll: true,
                                          reverse: false,
                                          autoPlay: true,
                                          autoPlayInterval:
                                              Duration(seconds: 3),
                                          autoPlayAnimationDuration:
                                              Duration(milliseconds: 1200),
                                          // autoPlayCurve: Curves.fastOutSlowIn,
                                          enlargeCenterPage: true,
                                          enlargeStrategy:
                                              CenterPageEnlargeStrategy.zoom,
                                          enlargeFactor: .2,
                                          onPageChanged: (index, reason) {},
                                          scrollDirection: Axis.horizontal,
                                        )),
                                  ),
                                  Positioned(
                                    top: 20,
                                    right: 20,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.favorite)),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  children: [
                                    Column(
                                      children: List.generate(
                                          itmemList.length,
                                          (index) => CustomCart(
                                                quantity: quantity,
                                                cartModel: itmemList[index],
                                              )),
                                    ),
                                    // SubtitleText12('FOUTO'),
                                    SizedBox(height: 20),
                                    Card(
                                      margin: EdgeInsets.all(0),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12),
                                        child: GridView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          itemCount: 20,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 4,
                                            crossAxisSpacing: 4,
                                            mainAxisSpacing: 4,
                                          ),
                                          itemBuilder: (context, index) =>
                                              Column(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  color: index.isEven
                                                      ? Colors.green
                                                      : Colors
                                                          .greenAccent.shade100,
                                                  child: Image.network(
                                                    itmemList[0].imgLink,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SubtitleText12(itmemList[0].title)
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: SafeArea(
            child: Column(children: [
              CircleAvatar(
                // color: kMainColor,
                // onPressed: () {},
                child: Icon(
                  Icons.facebook,
                  color: kWhite,
                  // size: 55,
                ),
              ),
              CircleAvatar(
                // color: kMainColor,
                // onPressed: () {},
                child: Icon(
                  Icons.facebook,
                  color: kWhite,
                  // size: 55,
                ),
              ),
              CircleAvatar(
                // color: kMainColor,
                // onPressed: () {},
                child: Icon(
                  Icons.facebook,
                  color: kWhite,
                  // size: 55,
                ),
              ),
            ]),
          ),
        )
      ],
    );
  }

  int totalQuantity = 0;
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
