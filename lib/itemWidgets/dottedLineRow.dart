import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class DottedLineRow extends StatelessWidget {
  final String title;
  final double price;
  const DottedLineRow({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Center(
              child: Container(
                child: DottedLine(
                  lineLength: MediaQuery.of(context).size.width * 0.42,
                  dashColor: const Color(
                    0xff868696,
                  ),
                ),
              ),
            ),
            Container(
              width: 80,
              child: Text(
                "\$${price.toStringAsFixed(
                  2,
                )}",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
