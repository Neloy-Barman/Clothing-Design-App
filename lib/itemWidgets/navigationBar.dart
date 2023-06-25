import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../screens/favourites.dart';
import '../screens/shoppingcart.dart';
import '../screens/mainhomescreen.dart';

class CurvedBar extends StatefulWidget {
  // final Function stateHandler;
  final int page;

  const CurvedBar({
    super.key,
    required this.page,
    // required this.stateHandler,
  });

  @override
  State<CurvedBar> createState() => CurvedBarState();
}

class CurvedBarState extends State<CurvedBar> {
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
    return CurvedNavigationBar(
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
        else if (index == 1)
          Navigator.of(context).popAndPushNamed(
            Favorites.routeScreen,
          );
        else if (index == 2)
          Navigator.of(context).popAndPushNamed(
            MainHomeScreen.routeScreen,
          );
      },
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: const Color(
        0xff4B46B8,
      ),
      index: widget.page,
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
    );
  }
}
