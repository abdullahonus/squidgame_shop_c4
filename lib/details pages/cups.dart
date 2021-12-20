// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:squidgame_shop_c4/details%20pages/ali.dart';
import 'package:squidgame_shop_c4/details%20pages/hero_page.dart';

class CupPage extends StatelessWidget {
  const CupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              centerTitle: true,
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black,
                    size: 33,
                  ),
                )
              ],
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 31,
                ),
              ),
            ),
            body: Stack(children: [
              Container(
                height: sizeHeight * 1,
                width: sizeWidth * 1,
                decoration: const BoxDecoration(color: Colors.white),
              ),
              Positioned(
                left: 50,
                right: 50,
                top: 5,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.pink.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    width: 150.0,
                    child: Center(
                      child: DefaultTextStyle(
                        style: const TextStyle(
                            fontFamily: "bold",
                            fontSize: 30.0,
                            color: Colors.black),
                        child: AnimatedTextKit(
                          displayFullTextOnTap: true,
                          repeatForever: true,
                          pause: const Duration(milliseconds: 1000),
                          animatedTexts: [
                            TypewriterAnimatedText('    '),
                            TypewriterAnimatedText('Cups'),
                          ],
                          onTap: () {},
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 90, bottom: 25),
                height: sizeHeight * 0.9,
                width: sizeWidth * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.withOpacity(0.6),
                      spreadRadius: 6,
                      blurRadius: 15,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: Expanded(
                  child: ListView(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                        height: sizeHeight * 0.4,
                        width: sizeWidth * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15)),
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: sizeHeight * 0.3,
                                    width: sizeWidth * 0.6,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/cup2.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => AliPage(),
                                      ));
                                    },
                                    child: const Text(
                                      "View Details",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontFamily: "bold",
                                          decoration: TextDecoration.none),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.pink[500],
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                    height: sizeHeight * 0.3,
                                    width: sizeWidth * 0.6,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/cup3.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => AliPage(),
                                      ));
                                    },
                                    child: const Text(
                                      "View Details",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontFamily: "bold",
                                          decoration: TextDecoration.none),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.pink[500],
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                    height: sizeHeight * 0.3,
                                    width: sizeWidth * 0.6,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/cup4.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => AliPage(),
                                      ));
                                    },
                                    child: const Text(
                                      "View Details",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontFamily: "bold",
                                          decoration: TextDecoration.none),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.pink[500],
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                    height: sizeHeight * 0.3,
                                    width: sizeWidth * 0.6,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/cup5.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => AliPage(),
                                      ));
                                    },
                                    child: const Text(
                                      "View Details",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontFamily: "bold",
                                          decoration: TextDecoration.none),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.pink[500],
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                    height: sizeHeight * 0.3,
                                    width: sizeWidth * 0.6,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/cup6.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => AliPage(),
                                      ));
                                    },
                                    child: const Text(
                                      "View Details",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontFamily: "bold",
                                          decoration: TextDecoration.none),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.pink[500],
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                    height: sizeHeight * 0.3,
                                    width: sizeWidth * 0.6,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/cup7.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => AliPage(),
                                      ));
                                    },
                                    child: const Text(
                                      "View Details",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontFamily: "bold",
                                          decoration: TextDecoration.none),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.pink[500],
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                    height: sizeHeight * 0.3,
                                    width: sizeWidth * 0.6,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/cup8.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => AliPage(),
                                      ));
                                    },
                                    child: const Text(
                                      "View Details",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontFamily: "bold",
                                          decoration: TextDecoration.none),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.pink[500],
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Detay(imgPath: "cup10.jpg")));
                        },
                        child: Hero(
                          tag: "cup11.jpg",
                          child: Container(
                            margin: EdgeInsets.only(top: 15, bottom: 15),
                            height: sizeHeight * 0.3,
                            width: sizeWidth * 0.5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("cup10.jpg"))),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Detay(imgPath: "cup11.jpg")));
                        },
                        child: Hero(
                          tag: "cup12.jpg",
                          child: Container(
                            margin: EdgeInsets.only(top: 15, bottom: 15),
                            height: sizeHeight * 0.3,
                            width: sizeWidth * 0.5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("cup12.jpg"))),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Detay(imgPath: "cup9.jpg")));
                        },
                        child: Hero(
                          tag: "cup9.jpg",
                          child: Container(
                            margin: EdgeInsets.only(top: 15, bottom: 15),
                            height: sizeHeight * 0.24,
                            width: sizeWidth * 0.5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("cup9.jpg"))),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Detay(imgPath: "cup10s.jpg")));
                        },
                        child: Hero(
                          tag: "cup10s.jpg",
                          child: Container(
                            margin: EdgeInsets.only(top: 15, bottom: 15),
                            height: sizeHeight * 0.25,
                            width: sizeWidth * 0.5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("cup10s.jpg"))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
