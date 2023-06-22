import "package:flutter/material.dart";

import './screens/homepage.dart';
import './screens/giftoption.dart';
import './screens/confirmation.dart';

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
          headlineSmall: TextStyle(
            fontSize: 15.5,
            color: Color(
              0xff868696,
            ),
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
      home: const Confirmation(),
      routes: {
        GiftOption.route_screen: (_) => const GiftOption(),
        Confirmation.routeScreen: (_) => const Confirmation(),
      },
    );
  }
}
