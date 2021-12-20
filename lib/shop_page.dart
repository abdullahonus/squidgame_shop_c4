// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:squidgame_shop_c4/details%20pages/ali.dart';
import 'package:squidgame_shop_c4/details%20pages/black.dart';
import 'package:squidgame_shop_c4/details%20pages/cups.dart';
import 'package:squidgame_shop_c4/details%20pages/gihun.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;

    return SafeArea(child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return ListView(scrollDirection: Axis.vertical, children: [
          Stack(
            children: [
              Container(
                height: sizeHeight * 1.9,
                width: sizeWidth * 1,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/screen.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: sizeHeight * 0.1,
                width: sizeWidth * 1,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: sizeWidth * 0.45,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/storeText.png"))),
                    ),
                    Container(
                      height: sizeHeight * 0.06,
                      width: sizeWidth * 0.38,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey[500],
                            size: sizeWidth * 0.07,
                          ),
                          Text(
                            "Search",
                            style: TextStyle(
                                fontFamily: "bold",
                                fontWeight: FontWeight.w400,
                                fontSize: sizeWidth * 0.06,
                                decoration: TextDecoration.none,
                                color: Colors.grey[500]),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.category_outlined,
                        size: sizeWidth * 0.1, color: Colors.pink[700]),
                  ],
                ),
              ),
              Positioned(
                left: 15,
                right: 15,
                top: 100,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    width: 250.0,
                    child: Center(
                      child: DefaultTextStyle(
                        style: const TextStyle(
                            fontFamily: "bold",
                            fontSize: 30.0,
                            color: Colors.black),
                        child: AnimatedTextKit(
                          displayFullTextOnTap: true,
                          repeatForever: true,
                          pause: const Duration(milliseconds: 1500),
                          animatedTexts: [
                            TypewriterAnimatedText('    '),
                            TypewriterAnimatedText('Small Toys'),
                          ],
                          onTap: () {},
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                right: 15,
                top: 150,
                child: Container(
                  height: sizeHeight * 0.5,
                  width: sizeWidth * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15)),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                        height: sizeHeight * 0.4,
                        width: sizeWidth * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: sizeHeight * 0.37,
                              width: sizeWidth * 0.7,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/Ali199.png"),
                                      fit: BoxFit.cover)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 8.0, right: 8.0),
                                    child: Text(
                                      "Ali",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.w100,
                                          fontFamily: "bold",
                                          fontSize: 35,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Icon(
                                    Icons.star_half_rounded,
                                    size: 35,
                                    color: Colors.yellow,
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
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
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                        height: sizeHeight * 0.4,
                        width: sizeWidth * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: sizeHeight * 0.37,
                              width: sizeWidth * 0.7,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/GiHun256.png"),
                                      fit: BoxFit.cover)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 8.0, right: 8.0),
                                    child: Text(
                                      "Gi-Hun",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w100,
                                          decoration: TextDecoration.none,
                                          fontFamily: "bold",
                                          fontSize: 35,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    size: 35,
                                    color: Colors.yellow,
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => GiHunPage(),
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
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                        height: sizeHeight * 0.4,
                        width: sizeWidth * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: sizeHeight * 0.37,
                              width: sizeWidth * 0.7,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/llNam001.png"),
                                      fit: BoxFit.cover)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 8.0, right: 8.0),
                                    child: Text(
                                      "ll-Nam",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w100,
                                          decoration: TextDecoration.none,
                                          fontFamily: "bold",
                                          fontSize: 35,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Icon(
                                    Icons.star_half_rounded,
                                    size: 35,
                                    color: Colors.yellow,
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
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
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                        height: sizeHeight * 0.4,
                        width: sizeWidth * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: sizeHeight * 0.37,
                              width: sizeWidth * 0.7,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/SaeByeok067.png"),
                                      fit: BoxFit.cover)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 8.0, right: 8.0),
                                    child: Text(
                                      "Sae-Byeok",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w100,
                                          decoration: TextDecoration.none,
                                          fontFamily: "bold",
                                          fontSize: 35,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Icon(
                                    Icons.star_half_rounded,
                                    size: 35,
                                    color: Colors.yellow,
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
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
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                        height: sizeHeight * 0.4,
                        width: sizeWidth * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: sizeHeight * 0.37,
                              width: sizeWidth * 0.7,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/sangWoo218.png"),
                                      fit: BoxFit.cover)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 8.0, right: 8.0),
                                    child: Text(
                                      "Sang-Woo",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w100,
                                          decoration: TextDecoration.none,
                                          fontFamily: "bold",
                                          fontSize: 35,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Icon(
                                    Icons.star_half_rounded,
                                    size: 35,
                                    color: Colors.yellow,
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
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
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 25, 15, 15),
                        height: sizeHeight * 0.4,
                        width: sizeWidth * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: sizeHeight * 0.30,
                              width: sizeWidth * 0.7,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/black.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 8.0, right: 8.0),
                                  child: Text(
                                    "Black Soldier",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w100,
                                        decoration: TextDecoration.none,
                                        fontFamily: "bold",
                                        fontSize: 30,
                                        color: Colors.white),
                                  ),
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  size: 35,
                                  color: Colors.yellow,
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => BlackPage(),
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
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                right: 15,
                top: 556,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    width: 250.0,
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
                  margin: EdgeInsets.only(top: 605, left: 15, right: 15),
                  height: sizeHeight * 0.6,
                  width: sizeWidth * 1,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15)),
                  child: ListView(scrollDirection: Axis.vertical, children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: sizeHeight * 0.4,
                          width: sizeWidth * 0.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/cup1.png"))),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                          height: sizeHeight * 0.1,
                          width: sizeWidth * 1,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CupPage(),
                              ));
                            },
                            child: const Text(
                              "Tab For More",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontFamily: "bold",
                                  decoration: TextDecoration.none),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.pink[500],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ])),
              Positioned(
                left: 15,
                right: 15,
                top: 1100,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    width: 250.0,
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
                            TypewriterAnimatedText('Cloutsh'),
                          ],
                          onTap: () {},
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 1155, left: 15, right: 15),
                  height: sizeHeight * 0.6,
                  width: sizeWidth * 1,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15)),
                  child: ListView(scrollDirection: Axis.vertical, children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: sizeHeight * 0.5,
                          width: sizeWidth * 0.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/allguard.png"),
                          )),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                          height: sizeHeight * 0.1,
                          width: sizeWidth * 1,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CupPage(),
                              ));
                            },
                            child: const Text(
                              "Tab For More",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontFamily: "bold",
                                  decoration: TextDecoration.none),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.pink[500],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ])),
            ],
          ),
        ]);
      },
    ));
  }
}
