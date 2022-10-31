import 'package:fashion_app/women_dresses_page.dart';
import 'package:flutter/material.dart';

class FashionHomePage extends StatefulWidget {
  const FashionHomePage({Key? key}) : super(key: key);

  @override
  _FashionHomePageState createState() => _FashionHomePageState();
}

class _FashionHomePageState extends State<FashionHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(Icons.apps),
          title: Text("Collections"),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WomenDressPage(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 16, top: 20),
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.red, width: 2),
                      color: Colors.red[50],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "images/8.jpg",
                        ),
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 32,
                          top: 16,
                          bottom: 16,
                          child: Center(
                            child: Container(
                              color: Colors.red[100],
                              child: Text(
                                "WOMEN",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue, width: 3),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "images/9.jpg",
                      ),
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 32,
                        top: 16,
                        bottom: 16,
                        child: Center(
                          child: Container(
                            color: Colors.blue[100],
                            child: Text(
                              "MEN",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  height: 320,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.orange, width: 3),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "images/10.jpg",
                              ),
                            ),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                left: 20,
                                right: 20,
                                top: 10,
                                child: Center(
                                  child: Container(
                                    color: Colors.orange[100],
                                    child: Text(
                                      "KIDS ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border:
                                  Border.all(color: Colors.green, width: 3),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "images/11.jpg",
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      left: 16,
                                      top: 0,
                                      bottom: 0,
                                      child: RotatedBox(
                                        quarterTurns: 3,
                                        child: Center(
                                          child: Container(
                                            color: Colors.green[100],
                                            child: Text(
                                              "SPORTS",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 28,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(bottom: 16),
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border:
                                  Border.all(color: Colors.blue, width: 3),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      "images/9.jpg",
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      left: 16,
                                      top: 0,
                                      bottom: 0,
                                      child: RotatedBox(
                                        quarterTurns: 3,
                                        child: Center(
                                          child: Container(
                                            color: Colors.blue,
                                            child: Text(
                                              "DAILY\n DEALS",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 28,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border:
                    Border.all(color: Colors.pink, width: 3),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "images/3.jpg",
                      ),
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                    Positioned(
                    left: 16,
                    top: 0,
                    bottom: 0,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Center(
                        child: Container(
                          color: Colors.redAccent,
                          child: Text(
                            "SALES ",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ],
        ),
      ),
    ),)
    ,
    );
  }
}
