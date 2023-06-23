import 'package:flutter/material.dart';

class AppbarTtitle extends StatelessWidget {
  final String title;
  const AppbarTtitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
      ),
    );
  }
}
