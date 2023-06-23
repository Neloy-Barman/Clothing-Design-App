import 'package:flutter/material.dart';
import "package:dotted_line/dotted_line.dart";

import '../itemWidgets/dottedLineRow.dart';
import '../itemWidgets/elevationButtonBuilder.dart';

class Confirmation extends StatelessWidget {
  static const routeScreen = "./confirmatio-screen";
  const Confirmation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Widget rowBuilder(
    //   String head,
    //   String price,
    // ) {
    //   return Padding(
    //     padding: const EdgeInsets.all(
    //       10.0,
    //     ),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         FittedBox(
    //           // fit: BoxFit.cover,
    //           child: Text(
    //             head,
    //             style: Theme.of(context).textTheme.headlineSmall,
    //           ),
    //         ),
    //         FittedBox(
    //           child: DottedLine(
    //             lineLength: MediaQuery.of(context).size.width * 0.4,
    //           ),
    //         ),
    //         FittedBox(
    //           // fit: BoxFit.contain,
    //           child: Text(
    //             "\$$price",
    //           ),
    //         ),
    //       ],
    //     ),
    //   );
    // }

    // Widget elevationButtonBuilder(
    //   String title,
    //   Function handler,
    // ) {
    //   return InkWell(
    //     onTap: () => handler,
    //     child: Container(
    //       width: MediaQuery.of(context).size.width * 0.4,
    //       height: MediaQuery.of(context).size.height * 0.08,
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(
    //           15,
    //         ),
    //         color: const Color(
    //           0xff4B46B8,
    //         ),
    //       ),
    //       child: Center(
    //         child: FittedBox(
    //           child: Text(
    //             title,
    //             style: const TextStyle(
    //               color: Colors.white,
    //             ),
    //             softWrap: true,
    //           ),
    //         ),
    //       ),
    //     ),
    //   );
    // }

    return Scaffold(
      // drawer: const SideDrawer(),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "CONFIRMATION",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              Column(
                children: [
                  const Icon(
                    Icons.shopping_bag_outlined,
                    size: 60,
                  ),
                  Text(
                    "Order #SL65242",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 15,
                    ),
                    child: Column(
                      children: [
                        FittedBox(
                          child: Text(
                            "Hey Farooqi,",
                            style: Theme.of(context).textTheme.headlineLarge,
                            textAlign: TextAlign.center,
                            softWrap: true,
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            "Thanks for your purchase.",
                            style: Theme.of(context).textTheme.headlineLarge,
                            textAlign: TextAlign.center,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 20,
                      left: 30,
                      right: 30,
                    ),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  children: [
                    const DottedLineRow(
                      title: "Subtotal",
                      price: 235.00,
                    ),
                    const DottedLineRow(
                      title: "VAT (15%)",
                      price: 4.99,
                    ),
                    const DottedLineRow(
                      title: "Shipping",
                      price: 20.36,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        bottom: 10.0,
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 80,
                              child: Text(
                                "Total",
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                            ),
                            Center(
                              child: Container(
                                child: DottedLine(
                                  lineLength:
                                      MediaQuery.of(context).size.width * 0.42,
                                  dashColor: const Color(
                                    0xff868696,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 80,
                              child: FittedBox(
                                child: Text(
                                  "\$25900.36",
                                  style: TextStyle(
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .fontSize,
                                    fontWeight: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .fontWeight,
                                    color: const Color(
                                      0xffF76834,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                  10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevationButtonBuilder(
                      title: "ORDER DETAILS",
                      handler: () {},
                    ),
                    ElevationButtonBuilder(
                      title: "CONTINUE",
                      handler: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
