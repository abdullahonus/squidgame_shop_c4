// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AliPage extends StatelessWidget {
  const AliPage({Key? key}) : super(key: key);

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
                child: Container(
                  height: sizeHeight * 0.6,
                  width: sizeWidth * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.pink.withOpacity(0.4),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                ),
              ),
              Positioned(
                  right: 60,
                  left: 60,
                  top: 150,
                  child: Container(
                    height: sizeHeight * 0.4,
                    width: sizeWidth * 0.4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Ali199.png"))),
                  )),
              Positioned(
                bottom: 10,
                right: 15,
                left: 15,
                top: 485,
                child: Container(
                  height: sizeHeight * 0.4,
                  width: sizeWidth * 0.4,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Ali Toy",
                        style: TextStyle(
                            fontSize: 40,
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$79.9",
                        style: TextStyle(
                            fontSize: 30,
                            decoration: TextDecoration.none,
                            color: Colors.grey.withOpacity(0.8),
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Container(
                            height: sizeHeight * 0.05,
                            width: sizeWidth * 0.10,
                            decoration: BoxDecoration(
                                color: Colors.pink[200],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30))),
                            child: Text(
                              "-",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.black.withOpacity(0.7),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.7),
                                  decoration: TextDecoration.none,
                                  fontSize: 30),
                            ),
                          ),
                          Container(
                            height: sizeHeight * 0.05,
                            width: sizeWidth * 0.10,
                            decoration: BoxDecoration(
                                color: Colors.pink[700],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30))),
                            child: Text(
                              "+",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.white.withOpacity(0.8),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star_rounded,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star_rounded,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star_rounded,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star_rounded,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "4.5",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey.withOpacity(0.9),
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Positioned(
                            left: 15,
                            right: 15,
                            child: Container(
                              height: sizeHeight * 0.1,
                              width: sizeWidth * 0.4,
                              decoration: BoxDecoration(
                                  color: Colors.pink[200],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Add to Chart",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.black.withOpacity(0.7),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.black.withOpacity(0.7),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 15,
                            right: 15,
                            child: Container(
                              height: sizeHeight * 0.1,
                              width: sizeWidth * 0.4,
                              decoration: BoxDecoration(
                                  color: Colors.pink[700],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Buy Now",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white.withOpacity(0.7),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ]),
          );
        },
      ),
    );
  }
}
