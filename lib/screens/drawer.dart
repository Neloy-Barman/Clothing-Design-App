import 'package:flutter/material.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({
    super.key,
  });

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  Widget drawerItem(
    IconData icon,
    String item,
    bool last,
  ) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(
          // horizontal: 15,
          left: 15,
          top: 7,
          bottom: 7,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 5,
                  ),
                  child: Icon(
                    icon,
                    size: 32,
                    color: const Color(
                      0xff868696,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  item,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            if (last != true)
              const Divider(
                color: Colors.grey,
                thickness: 0.5,
                indent: 40,
              ),
          ],
        ),
      ),
    );
  }

  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    bool? last;
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
            height: MediaQuery.of(context).size.height * 0.2,
            child: const Stack(
              children: [
                Image(
                  image: AssetImage(
                    "assets/images/clothing_design_logo.png",
                  ),
                ),
                Positioned(
                  top: 98,
                  left: 55,
                  child: Center(
                    child: Text(
                      "Save Shop and view orders",
                      style: TextStyle(
                        color: Color(
                          0xff868696,
                        ),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          drawerItem(
            Icons.home_outlined,
            "HOME",
            last = false,
          ),
          drawerItem(
            Icons.shopping_cart_outlined,
            "BASKET",
            last = false,
          ),
          drawerItem(
            Icons.favorite_outline,
            "SAVED ITEMS",
            last = false,
          ),
          drawerItem(
            Icons.perm_identity_outlined,
            "MY ACCOUNT",
            last = false,
          ),
          drawerItem(
            Icons.settings_outlined,
            "APP SETTINGS",
            last = false,
          ),
          drawerItem(
            Icons.info_outline,
            "HELP & FAQS",
            last = true,
          ),
          const Divider(
            color: Color(
              0xffF3F3F5,
            ),
            thickness: 8,
          ),
          SwitchListTile(
            activeTrackColor: const Color(
              0xff4B46B8,
            ),
            activeColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 0,
            ),
            title: const Text(
              "DARK MODE",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            value: darkMode,
            onChanged: (value) {
              setState(() {
                darkMode = value;
              });
            },
            secondary: const Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 0,
              ),
              child: Icon(
                Icons.dark_mode_outlined,
                size: 30,
              ),
            ),
          ),
          const Divider(
            color: Color(
              0xffF3F3F5,
            ),
            thickness: 8,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: Text(
                    "MORE ASOS",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 7,
                  ),
                  child: InkWell(
                    child: Text(
                      "Gift Vouchers",
                      style: TextStyle(
                        color: Color(
                          0xff868696,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 7,
                  ),
                  child: InkWell(
                    child: Text(
                      "Marketplace",
                      style: TextStyle(
                        color: Color(
                          0xff868696,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Color(
              0xffF3F3F5,
            ),
            thickness: 8,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "LOG OUT",
                  style: TextStyle(
                    color: Color(
                      0xffF76834,
                    ),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Divider(
                  color: Color(
                    0xff868696,
                  ),
                  thickness: 0.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
