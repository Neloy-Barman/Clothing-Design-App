import 'package:flutter/material.dart';

import '../itemWidgets/basketItem.dart';
import '../itemWidgets/appbarTitle.dart';
import '../itemWidgets/dottedLineRow.dart';
import '../itemWidgets/elevationButtonBuilder.dart';

import '../models/Product.dart';

class ShoppingCart extends StatefulWidget {
  static const routeScreen = "./basket-screen";
  const ShoppingCart({
    super.key,
  });

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List<Product> products = [
    Product(
      title: "Men Brown Jacket",
      subtitle: "Makenzy",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScGxCyHsUDa2QDndS2XeBjodoNfMwdBWeqjJm-DBdi68b5HVkVTN51tKG9wzR6tSZjoNk&usqp=CAU",
      price: 40.00,
    ),
    Product(
      title: "Men Black Jacket",
      subtitle: "Levi's",
      imageUrl:
          "https://rukminim1.flixcart.com/image/550/650/xif0q/jacket/a/h/i/xl-mnt-7025-montrez-original-imag5hb93udpfs4q-bb.jpeg?q=90&crop=false",
      price: 55.35,
    ),
    Product(
      title: "Men Black Shirt",
      subtitle: "Eastacsy",
      imageUrl:
          "https://www.jiomart.com/images/product/original/rv7y75ij0k/design-up-black-shirt-men-black-slim-fit-tuxedo-shirt-xl-shirts-shirt-casual-shirt-slim-fit-party-wear-product-images-rv7y75ij0k-0-202210141655.jpg?im=Resize=(500,630)",
      price: 30.00,
    ),
    Product(
      title: "Men White Tshirt",
      subtitle: "Tedbaker",
      imageUrl:
          "https://cdn.shopify.com/s/files/1/0434/2487/4658/products/HV020D0899Z_BC01_1_1831539f-7207-43c0-b326-98be14614b42_800x.jpg?v=1667324606",
      price: 23.5,
    ),
    Product(
      title: "Men Mass Tshirt",
      subtitle: "Makenzy",
      imageUrl: "https://m.media-amazon.com/images/I/41QrF3sVmTL._SY550_.jpg",
      price: 30.75,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppbarTtitle(
          title: "BASKET",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline,
              size: 25,
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.62,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    BasketItem(
                      title: products[0].title,
                      imageUrl: products[0].imageUrl,
                      price: products[0].price,
                      color: "Deep Brown",
                      size: "M",
                    ),
                    BasketItem(
                      title: products[0].title,
                      imageUrl: products[0].imageUrl,
                      price: products[0].price,
                      color: "Deep Brown",
                      size: "M",
                    ),
                    BasketItem(
                      title: products[0].title,
                      imageUrl: products[0].imageUrl,
                      price: products[0].price,
                      color: "Deep Brown",
                      size: "M",
                    ),
                    BasketItem(
                      title: products[0].title,
                      imageUrl: products[0].imageUrl,
                      price: products[0].price,
                      color: "Deep Brown",
                      size: "M",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Container(
                  // color: Colors.amber,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      const DottedLineRow(
                        title: "Subtotal",
                        price: 235.00,
                      ),
                      const DottedLineRow(
                        title: "Shipping",
                        price: 24.36,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Is it a gift order?",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Select",
                              style: TextStyle(
                                color: Color(
                                  0xff4B46B8,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevationButtonBuilder(
                            title: "CONTINUE",
                            handler: () {},
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              FittedBox(
                                child: Text(
                                  "TOTAL \$253.36",
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              Text(
                                "Vat Included",
                                textAlign: TextAlign.end,
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
