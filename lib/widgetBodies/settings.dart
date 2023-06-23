import 'package:flutter/material.dart';

class AppSettings extends StatelessWidget {
  static const routeScreen = "./settings-screen";
  AppSettings({
    super.key,
  });

  Widget rowBuilder(
    IconData icon,
    String title,
    bool last,
    Function handler,
  ) {
    return InkWell(
      onTap: () {
        handler;
      },
      overlayColor: const MaterialStatePropertyAll(
        Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 6,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      icon,
                      size: 30,
                      color: const Color(
                        0xff868696,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.navigate_next_outlined,
                  size: 35,
                  color: Color(
                    0xff868696,
                  ),
                ),
              ],
            ),
            !last
                ? const Divider(
                    thickness: 2,
                  )
                : const Divider(
                    thickness: 2,
                    color: Color.fromARGB(
                      255,
                      248,
                      243,
                      243,
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  bool? last;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(
          15.0,
        ),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(
                  255,
                  248,
                  243,
                  243,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    15,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(
                      15,
                    ),
                    child: Text(
                      "Preference",
                      style: Theme.of(
                        context,
                      ).textTheme.displayMedium,
                    ),
                  ),
                  rowBuilder(Icons.notifications_none, "Notification",
                      last = false, () {}),
                  rowBuilder(
                    Icons.language_outlined,
                    "Language",
                    last = false,
                    () {},
                  ),
                  rowBuilder(
                    Icons.attach_money_outlined,
                    "Currency",
                    last = true,
                    () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(
                  255,
                  248,
                  243,
                  243,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    15,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(
                      10,
                    ),
                    child: Text(
                      "Banking & Payment",
                      style: Theme.of(
                        context,
                      ).textTheme.displayMedium,
                    ),
                  ),
                  rowBuilder(
                    Icons.payment_outlined,
                    "Payment Method",
                    last = false,
                    () {},
                  ),
                  rowBuilder(
                    Icons.privacy_tip_outlined,
                    "Privacy Policy",
                    last = false,
                    () {},
                  ),
                  rowBuilder(
                    Icons.question_mark_outlined,
                    "Terms of Use",
                    last = true,
                    () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
