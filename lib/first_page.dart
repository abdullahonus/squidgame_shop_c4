import 'package:flutter/material.dart';

class StartShopingPage extends StatelessWidget {
  const StartShopingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.blue,
        );
      },
    ));
  }
}
