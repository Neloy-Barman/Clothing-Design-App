import "package:flutter/material.dart";

import './screens/parent.dart';

import './screens/homepage.dart';
// import 'widgetBodies/profile.dart';
import './screens/giftoption.dart';
import './screens/confirmation.dart';
// import 'widgetBodies/settings.dart';

import './screens/market.dart';

void main() {
  runApp(
    const ClothingDesignApp(),
  );
}

class ClothingDesignApp extends StatelessWidget {
  const ClothingDesignApp({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // AppBar Theme
        appBarTheme: const AppBarTheme(
          actionsIconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 23,
          ),
        ),
        fontFamily: "BeVietnamPro",
        canvasColor: const Color(
          0xffffffff,
        ),
        // Elevated button theme
        filledButtonTheme: const FilledButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(
                vertical: 15,
              ),
            ),
          ),
        ),
        // Text Theme
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Color(
              0xff1A172C,
            ),
          ),
          displayLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(
              0xff1A172C,
            ),
          ),
          headlineMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Color(
              0xff868696,
            ),
          ),
          displayMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
          headlineSmall: TextStyle(
            fontSize: 15.5,
            color: Color(
              0xff868696,
            ),
          ),
          labelMedium: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          titleMedium: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(
              (_) => const Color(
                0xff4B46B8,
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MarketScreen(),
      routes: {
        ParentScreen.routeScreen: (_) => const ParentScreen(),
        // Profile.routeScreen: (_) => const Profile(),
        GiftOption.route_screen: (_) => const GiftOption(),
        Confirmation.routeScreen: (_) => const Confirmation(),
        // AppSettings.routeScreen: (_) => AppSettings(),
        MarketScreen.routeScreen: (_) => const MarketScreen(),
      },
    );
  }
}
