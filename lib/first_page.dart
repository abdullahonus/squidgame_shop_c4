import 'package:flutter/material.dart';
import 'package:squidgame_shop_c4/shop_page.dart';

class StartShopingPage extends StatefulWidget {
  const StartShopingPage({Key? key}) : super(key: key);

  @override
  State<StartShopingPage> createState() => _StartShopingPageState();
}

class _StartShopingPageState extends State<StartShopingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/screen.jpg"),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 40,
              left: 15,
              right: 15,
              child: Container(
                width: 350,
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 250,
                      height: 100,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/textSG.png"))),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Shope your favorite toys and outfits of the SquideGame on the gol.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        debugPrint("Butona Basıldı");
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ShopPage(),
                        ));
                      },
                      child: const Text("Shop Now"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink[400],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        minimumSize: const Size(250, 50),
                        textStyle: const TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      },
    ));
  }
}
