import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    super.key,
  });

  Widget drawerItem(
    IconData icon,
    String item,
  ) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 8,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 32,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  item,
                ),
              ],
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.5,
              indent: 25,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: const BoxDecoration(
        color: Color(
          0xffFCFCFC,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 100,
          ),
          drawerItem(
            Icons.home_outlined,
            "HOME",
          ),
          drawerItem(
            Icons.shopping_cart_outlined,
            "BASKET",
          ),
          drawerItem(
            Icons.favorite_outline,
            "DAVED ITEMS",
          ),
          drawerItem(
            Icons.perm_identity_outlined,
            "MY ACCOUNT",
          ),
          drawerItem(
            Icons.settings_outlined,
            "APP SETTINGS",
          ),
          drawerItem(
            Icons.info_outline,
            "HELP & FAQS",
          ),
          const Divider(
            color: Colors.grey,
            thickness: 8,
          ),
        ],
      ),
    );
  }
}
