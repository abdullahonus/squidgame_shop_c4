import 'package:flutter/material.dart';
import 'package:squidgame_shop_c4/first_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: StartShopingPage());
  }
}
