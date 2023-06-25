import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../screens/mainhomescreen.dart';
import 'shoppingcart.dart';

import '../widgetBodies/settings.dart';
import '../widgetBodies/profile.dart';

class ParentScreen extends StatefulWidget {
  static const routeScreen = "./parent-screen";

  int? page;

  ParentScreen({
    super.key,
    required this.page,
  });
  @override
  State<StatefulWidget> createState() {
    return _ParentScreenState();
  }
}

class _ParentScreenState extends State<ParentScreen> {
  var screenNames = [
    "SHOPPING CART",
    "FAVOURITES",
    " ",
    "APP SETTINGS",
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
      appBar: widget.page == 2
          ? AppBar(
              title: Center(
                child: Text(
                  screenNames[widget.page!],
                ),
              ),
            )
          : AppBar(
              title: Center(
                child: Text(
                  screenNames[widget.page!],
                ),
              ),
            ),
      body: widget.page == 3
          ? AppSettings()
          : widget.page == 4
              ? const Profile()
              : Container(),
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color.fromARGB(
          255,
          248,
          243,
          243,
        ),
        height: MediaQuery.of(context).size.height * 0.07,
        animationDuration: const Duration(
          milliseconds: 10,
        ),
        onTap: (index) {
          if (index == 0)
            Navigator.of(context).pushNamed(
              ShoppingCart.routeScreen,
            );
          else if (index == 2)
            setState(() {
              widget.page = index;
            });
          else
            Navigator.of(context).pushReplacementNamed(
              MainHomeScreen.routeScreen,
            );
        },
        backgroundColor: Colors.white,
        buttonBackgroundColor: const Color(
          0xff4B46B8,
        ),
        index: widget.page!,
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
