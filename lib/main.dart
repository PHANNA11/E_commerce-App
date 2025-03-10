import 'package:e_commerce/account/view/profile_screen.dart';
import 'package:e_commerce/shop/view/home_shop.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ProfileScreen(),
      home: HomeShopScreen(),
    );
  }
}
