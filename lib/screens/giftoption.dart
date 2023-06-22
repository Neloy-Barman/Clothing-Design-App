import 'package:flutter/material.dart';

class GiftOption extends StatefulWidget {
  static const route_screen = "./gift-option";

  const GiftOption({super.key});

  @override
  State<GiftOption> createState() => _GiftOptionState();
}

class _GiftOptionState extends State<GiftOption> {
  bool giftReceipt = false;
  bool giftWrap = false;
  bool getVideo = false;

  Widget _itemBuild(
    String head,
    String para,
    bool value,
    Function(bool) updateValue,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 0,
        bottom: 15,
      ),
      child: SwitchListTile(
        activeTrackColor: const Color(
          0xff4B46B8,
        ),
        activeColor: Colors.white,
        value: value,
        onChanged: updateValue,
        title: Text(
          head,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          para,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "GIFT OPTION",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 18,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                _itemBuild(
                  "GIFT RECEIPT",
                  "The person to whom you send the order will receive a gift with no prices.",
                  giftReceipt,
                  (value) {
                    setState(() {
                      giftReceipt = value;
                    });
                  },
                ),
                _itemBuild(
                  "GIFT WRAPPING 5.89 USD",
                  "Send your order as a gift in special wrapping",
                  giftWrap,
                  (value) {
                    setState(() {
                      giftWrap = value;
                    });
                  },
                ),
                _itemBuild(
                  "GET VIDEO",
                  "It will include a personalized video as a greeting.",
                  getVideo,
                  (value) {
                    setState(() {
                      getVideo = value;
                    });
                  },
                ),
              ],
            ),
            ElevatedButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "SAVE",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
