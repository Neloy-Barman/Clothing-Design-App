import 'package:flutter/material.dart';

class HorizontalListItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final double price;
  const HorizontalListItem({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 4.3,
        horizontal: 12,
      ),
      elevation: 3,
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(
                10,
              ),
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                      child: Image(
                        image: NetworkImage(
                          imageUrl,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 5,
                    top: 3,
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
            Padding(
              padding: EdgeInsets.only(
                bottom: 5,
                right: 5,
                left: 5,
              ),
              child: Column(
                children: [
                  FittedBox(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  FittedBox(
                    child: Text(
                      subtitle,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        // bottom: 8,
                        ),
                    child: FittedBox(
                      child: Text(
                        "\$${price.toStringAsFixed(
                          2,
                        )}",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
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
