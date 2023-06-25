import 'package:flutter/material.dart';

import '../models/Product.dart';
import '../itemWidgets/basketItem.dart';

import '../itemWidgets/horizontallistitems.dart';

class MarketHomeScreen extends StatefulWidget {
  static const routeScreen = "./market-homescreen";
  const MarketHomeScreen({
    super.key,
  });

  @override
  State<MarketHomeScreen> createState() => _MarketHomeScreenState();
}

class _MarketHomeScreenState extends State<MarketHomeScreen> {
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

  // List rowChilds = [];
  // int i = 0;

  // int n = products.length;

  @override
  Widget build(BuildContext context) {
    // for (i = 0; i <= proudcts.length; i++) {}
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "MEN",
            ),
          ),
          bottom: TabBar(
            unselectedLabelColor: Color(
              0xff868696,
            ),
            labelPadding: EdgeInsets.only(
              right: 2,
              left: 2,
            ),
            labelColor: Color(
              0xff4B46B8,
            ),
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                text: "Trendy",
              ),
              Tab(
                text: "Shirt",
              ),
              Tab(
                text: "T-Shirt",
              ),
              Tab(
                text: "Suit",
              ),
              Tab(
                text: "Pant",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              // color: Colors.amber,
              child: Column(
                children: [
                  Container(
                    // color: Colors.red,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (var index = 0; index < products.length; index++)
                            HorizontalListItem(
                              title: products[index].title,
                              imageUrl: products[index].imageUrl,
                              subtitle: products[index].subtitle,
                              price: products[index].price,
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Text(
                "Sexy you",
              ),
            ),
            Center(
              child: Text(
                "Sexy me",
              ),
            ),
            Center(
              child: Text(
                "Fuck you",
              ),
            ),
            Center(
              child: Text(
                "Fuck you",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
