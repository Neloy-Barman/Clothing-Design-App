import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../widgetBodies/settings.dart';
import '../widgetBodies/profile.dart';

class ParentScreen extends StatefulWidget {
  static const routeScreen = "./parent-screen";

  const ParentScreen({
    super.key,
  });
  @override
  State<StatefulWidget> createState() {
    return _ParentScreenState();
  }
}

class _ParentScreenState extends State<ParentScreen> {
  int page = 0;

  var screenNames = [
    "SHOPPING CART",
    "FAVOURITES",
    "HOME",
    "SETTINGS",
    "PROFILE",
  ];

  Widget iconBuilder(IconData icon) {
    return Icon(
      icon,
      size: 25,
      color: const Color.fromARGB(
        255,
        211,
        211,
        223,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var ScreenBodies = [
      "",
      "",
      "",
      AppSettings(),
      const Profile(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            screenNames[page],
          ),
        ),
      ),
      body: page == 3
          ? AppSettings()
          : page == 4
              ? const Profile()
              : Container(),
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color.fromARGB(
          255,
          248,
          243,
          243,
        ),
        height: MediaQuery.of(context).size.height * 0.085,
        animationDuration: const Duration(
          milliseconds: 10,
        ),
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        backgroundColor: Colors.white,
        buttonBackgroundColor: const Color(
          0xff4B46B8,
        ),
        index: 0,
        items: [
          iconBuilder(
            Icons.shopping_cart_outlined,
          ),
          iconBuilder(
            Icons.favorite_border_outlined,
          ),
          iconBuilder(
            Icons.home_outlined,
          ),
          iconBuilder(
            Icons.settings_outlined,
          ),
          iconBuilder(
            Icons.perm_identity_outlined,
          ),
        ],
      ),
    );
  }
}
