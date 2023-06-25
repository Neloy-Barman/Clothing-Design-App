import 'package:flutter/material.dart';

class MarketItemBuilder extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final double price;
  const MarketItemBuilder({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
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
                  bottom: 15,
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
                            imageUrl,
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
                title,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 8,
              ),
              child: FittedBox(
                child: Text(
                  "\$${price.toStringAsFixed(
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
  }
}
