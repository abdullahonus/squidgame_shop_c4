import 'package:flutter/material.dart';
import 'package:squidgame_shop_c4/first_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Countrol4',
        home: StartShopingPage());
  }
}
