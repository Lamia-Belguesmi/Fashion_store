import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class WomenDressPage extends StatefulWidget {
  const WomenDressPage({Key? key}) : super(key: key);

  @override
  _WomenDressPageState createState() => _WomenDressPageState();
}

class _WomenDressPageState extends State<WomenDressPage> {
  List a = [
    "images/1.jpg",
    "images/6.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/4.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text(
            "WOMEN'S Dress",
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.apps),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_outlined),
            ),
          ],
        ),
        body: DefaultTabController(
          length: 6,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: Column(
              children: <Widget>[
                TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.black,
                  indicatorWeight: 2.5,
                  tabs: [
                    Tab(
                      text: "Basic",
                    ),
                    Tab(
                      text: "Cocktail",
                    ),
                    Tab(
                      text: "Evening Gown",
                    ),
                    Tab(
                      text: "BabyDoll",
                    ),
                    Tab(
                      text: "Maxi",
                    ),
                    Tab(
                      text: "Dresses",
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        child: MasonryGridView.count(
                          itemCount: 10,
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          itemBuilder: (context, index) {
                            return Container(
                              color: Colors.red[50],
                              height: index % 4 == 0 ? 220 : 200,
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        // color: Colors.brown,
                                        image: DecorationImage(
                                          image: AssetImage(a[index]),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        "Strap Neck BodyCon",
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(text: "\$"),
                                            TextSpan(
                                              text: "64",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextSpan(text: ".00"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                        // child: StaggeredGrid.count(
                        //   crossAxisCount: 2,
                        //   crossAxisSpacing: 12,
                        //   mainAxisSpacing: 12,
                        //   children: List.generate(
                        //     10,
                        //     (index) => StaggeredGridTile.count(
                        //       crossAxisCellCount: 2,
                        //       mainAxisCellCount: 2,
                        //       child: Container(
                        //         color: Colors.blue,
                        //         child: Text("$index"),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ),
                      Center(
                        child: Text("2"),
                      ),
                      Center(
                        child: Text("3"),
                      ),
                      Center(
                        child: Text("4"),
                      ),
                      Center(
                        child: Text("5"),
                      ),
                      Center(
                        child: Text("6"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 68,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search_rounded),
                        hintText: "Serach",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.filter_list),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
