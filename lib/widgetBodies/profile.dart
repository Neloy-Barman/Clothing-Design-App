import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static const routeScreen = "./profile-screen";

  const Profile({
    super.key,
  });

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    Widget buttonBuilder(
      String head,
      Function handler,
    ) {
      return InkWell(
        onTap: () {
          handler;
        },
        overlayColor: const MaterialStatePropertyAll(
          Colors.black12,
        ),
        borderRadius: BorderRadius.circular(
          15,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              15,
            ),
            color: const Color.fromARGB(
              255,
              248,
              243,
              243,
            ),
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          height: MediaQuery.of(context).size.height * 0.07,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  head,
                ),
                const Icon(
                  Icons.navigate_next_outlined,
                ),
              ],
            ),
          ),
        ),
      );
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(
          15.0,
        ),
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/profile_pic.jpeg",
                ),
                radius: 30,
              ),
              title: Text(
                "Farooqi Noor",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              subtitle: Text(
                "farooqinoor@yahoo.com",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            buttonBuilder(
              "ACCOUNT",
              () {},
            ),
            buttonBuilder(
              "ADDRESSES",
              () {},
            ),
            buttonBuilder(
              "WALLET",
              () {},
            ),
            buttonBuilder(
              "PASSWORD",
              () {},
            ),
          ],
        ),
      ),
    );
  }
}
