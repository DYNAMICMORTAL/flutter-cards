library static_card_ads;

import 'package:flutter/material.dart';

class StaticCardAds extends StatelessWidget {
  final String title;
  final String subtitle;
  final String priceText;
  final String termsText;
  final Color cardColor;
  final Color titleColor;
  final Color textColor;

  const StaticCardAds({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.priceText,
    required this.termsText,
    required this.cardColor,
    required this.titleColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 210,
      child: Container(
        margin: const EdgeInsets.only(right: 15, top: 30),
        child: Column(
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.only(right: 16, top: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Container(
                      //   child: SizedBox(
                      //     width: 135,
                      //     height: 135,
                      //     child: Container(
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(10),
                      //       ),
                      //       // child: const Image(image: AssetImage('lib/assets/loveit_heart.png')), //add your Image as required
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 27,
                              color: titleColor,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            subtitle,
                            style: TextStyle(
                              color: textColor,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            priceText,
                            style: TextStyle(
                              color: textColor,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            termsText,
                            style: TextStyle(
                              fontSize: 10,
                              color: textColor,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
