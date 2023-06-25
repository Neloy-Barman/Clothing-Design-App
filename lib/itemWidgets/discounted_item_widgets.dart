import 'package:flutter/material.dart';

class DiscountedItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final double price;
  const DiscountedItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        5,
      ),
      child: Card(
        elevation: 3,
        child: Container(
          child: Row(
            children: [
              Container(
                height: 120,
                width: 120,
                child: Padding(
                  padding: EdgeInsets.all(
                    10,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                    child: Image(
                      image: NetworkImage(
                        imageUrl,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        subtitle,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        "\$${price.toStringAsFixed(
                          2,
                        )}",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Save 10% on this order",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 10,
                            ),
                            child: CircleAvatar(
                              radius: 12,
                              child: Icon(
                                Icons.add,
                                size: 20,
                              ),
                              backgroundColor: Colors.black,
                            ),
                          ),
                        ),
                      ],
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
