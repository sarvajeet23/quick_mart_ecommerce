import 'package:flutter/material.dart';

class TopBackgroundImageDetail extends StatelessWidget {
  const TopBackgroundImageDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/products/product_categories/smrtwatch.avif",
      fit: BoxFit.fill,
    );
  }
}
