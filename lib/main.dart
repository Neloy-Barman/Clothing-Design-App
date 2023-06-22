import "package:flutter/material.dart";

import './screens/homepage.dart';
import './screens/giftoption.dart';

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
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        fontFamily: "BeVietnamPro",
        canvasColor: const Color(
          0xffffffff,
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Color(
              0xff1A172C,
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
      home: const GiftOption(),
      routes: {
        GiftOption.route_screen: (_) => const GiftOption(),
      },
    );
  }
}
