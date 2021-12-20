// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Detay extends StatefulWidget {
  var imgPath;
  Detay({Key? key, this.imgPath}) : super(key: key);
  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new),
            color: Colors.black,
          )),
      body: Stack(children: [
        Hero(
          tag: widget.imgPath,
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
            height: sizeHeight * 0.8,
            width: sizeWidth * 1,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(widget.imgPath),
              fit: BoxFit.cover,
            )),
          ),
        ),
        Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Container(
              width: 70,
              height: 85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pink.withOpacity(0.6),
                    spreadRadius: 12,
                    blurRadius: 12,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  const SizedBox(
                      width: 270,
                      height: 50,
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "storeText.png",
                        ),
                      )),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: const Icon(Icons.favorite),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: const Icon(Icons.card_giftcard),
                  ),
                ],
              ),
            ))
      ]),
    );
  }
}
