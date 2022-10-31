import 'package:fashion_app/fashion_home_page.dart';
import 'package:flutter/material.dart';



class FashionEcommerceApp extends StatelessWidget {
  const FashionEcommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FashionHomePage(),
    );
  }
}
