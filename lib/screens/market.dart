import 'package:clothing_design_app/screens/drawer.dart';
import 'package:flutter/material.dart';
// import 'package:badges/badges.dart' as badges;

import '../models/Product.dart';

class MarketScreen extends StatefulWidget {
  static const routeScreen = "./market-screen";

  const MarketScreen({
    super.key,
  });

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
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
      drawer: const SideDrawer(),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Favourites",
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.abc,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          15.0,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .68,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  color: Colors.transparent,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10,
                          right: 8,
                          left: 8,
                          top: 8,
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                5,
                              ),
                              child: Container(
                                width: double.infinity,
                                child: Image(
                                  image: NetworkImage(
                                    products[index].imageUrl,
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const Positioned(
                              right: 10,
                              top: 5,
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: Color(
                                  0xffF76834,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        products[index].title,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                    Text(
                      products[index].subtitle,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 8,
                      ),
                      child: FittedBox(
                        child: Text(
                          "\$${products[index].price.toStringAsFixed(
                                2,
                              )}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
