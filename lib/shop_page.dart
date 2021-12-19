import 'package:flutter/material.dart';

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
        return Stack(
          children: [
            Container(
              height: sizeHeight * 1,
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
                              fontWeight: FontWeight.w200,
                              fontSize: sizeWidth * 0.04,
                              decoration: TextDecoration.none,
                              color: Colors.grey[500]),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.category_outlined,
                      size: sizeWidth * 0.1, color: Colors.pink[900]),
                ],
              ),
            ),
            Positioned(
              left: 15,
              child: Container(
                height: sizeHeight * 0.5,
                width: sizeWidth * 0.8,
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
              ),
            )
          ],
        );
      },
    ));
  }
}
