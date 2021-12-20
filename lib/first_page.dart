import 'package:animated_text_kit/animated_text_kit.dart';
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
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
////////////////////////////////////////////
  ///follor For more ig: @Countrol4offical
  ///@countrolfour@gmail.com
////////////////////////////////////////////
    return SafeArea(child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Stack(
          children: [
            Container(
              height: sizeHeight * 1,
              width: sizeWidth * 1,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/wpp.png"), fit: BoxFit.cover)),
            ),
            Positioned(
              left: 15,
              right: 15,
              top: 350,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.pink.shade700),
                    color: Colors.white.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(15)),
                child: SizedBox(
                  width: 250.0,
                  child: Center(
                    child: DefaultTextStyle(
                      style: const TextStyle(
                          fontFamily: "bold",
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          color: Colors.black),
                      child: AnimatedTextKit(
                        displayFullTextOnTap: true,
                        isRepeatingAnimation: false,
                        pause: const Duration(milliseconds: 1500),
                        animatedTexts: [
                          TypewriterAnimatedText('    '),
                          TypewriterAnimatedText('Welcome Gamer'),
                          TypewriterAnimatedText('Do you need Money'),
                          TypewriterAnimatedText('Lets Play a Game!!'),
                        ],
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 15,
              right: 15,
              child: Container(
                height: sizeHeight * 0.3,
                width: sizeWidth * 1,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.pink.shade700),
                    color: Colors.grey.withOpacity(0.6),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: sizeHeight * 0.1,
                      width: sizeWidth * 0.6,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/textSG.png"))),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Shope your favorite toys and outfits of the SquideGame on the gol.",
                        style: TextStyle(
                          fontSize: 17,
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
                        primary: Colors.pink[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        minimumSize: Size(sizeHeight * 0.1, sizeWidth * 0.1),
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
