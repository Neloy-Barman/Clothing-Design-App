import 'package:flutter/material.dart';

class ElevationButtonBuilder extends StatelessWidget {
  final String title;
  final Function handler;
  const ElevationButtonBuilder({
    super.key,
    required this.title,
    required this.handler,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => handler,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.35,
        height: MediaQuery.of(context).size.height * 0.065,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15,
          ),
          color: const Color(
            0xff4B46B8,
          ),
        ),
        child: Center(
          child: FittedBox(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
              ),
              softWrap: true,
            ),
          ),
        ),
      ),
    );
  }
}
