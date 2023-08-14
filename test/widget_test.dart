import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:static_card_ads/static_card_ads.dart';

void main() {
  testWidgets('StaticCardAds displays correctly', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: StaticCardAds(
            title: "Custom Title",
            subtitle: "Custom Starting At Text",
            priceText: "Custom Price Text",
            termsText: "Custom Terms and Conditions Text",
            cardColor: Colors.blue,
            titleColor: Colors.white,
            textColor: Colors.white,
          ),
        ),
      ),
    );

    // Verify that the StaticCardAds widget displays correctly.
    expect(find.text("Custom Title"), findsOneWidget);
    expect(find.text("Custom Starting At Text"), findsOneWidget);
    expect(find.text("Custom Price Text"), findsOneWidget);
    expect(find.text("Custom Terms and Conditions Text"), findsOneWidget);
    expect(find.byType(Image), findsOneWidget); // Assuming you have an Image in your widget
    expect(find.byType(StaticCardAds), findsOneWidget);
  });
}