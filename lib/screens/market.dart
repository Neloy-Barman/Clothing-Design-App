import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(
          8.0,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              15,
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
                  Text(
                    products[index].title,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Text(
                    products[index].subtitle,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    "\$${products[index].price.toStringAsFixed(
                          2,
                        )}",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}