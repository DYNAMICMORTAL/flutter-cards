import 'package:flutter/material.dart';
import 'package:static_card_ads/static_card_ads.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Static Card Example'),
        ),
        body: Container(
          child: Column(
            children: [
              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StaticCardAds(
                    title: "CARD 1",
                    subtitle: "ADD SUBTITLE",
                    priceText: "ADD SUBTEXT", // or any other text as you require
                    termsText: "USE FIELDS TO EDIT",
                    cardColor: Colors.black,
                    titleColor: Colors.white,
                    textColor: Colors.white,
                  ),
                  StaticCardAds(
                    title: "CARD 2",
                    subtitle: "ADD SUBTITLE",
                    priceText: "ADD SUBTEXT", // or any other text as you require
                    termsText: "USE FIELDS TO EDIT",
                    cardColor: Color(0xFFFC8C8F3),
                    titleColor: Colors.black,
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),],
          ),
        ),
      ),
    );
  }
}