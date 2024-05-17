import 'package:flutter/material.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 5; i++)
          Icon(
            Icons.star,
            color: Color.fromARGB(255, 255, 227, 104),
          ),
        Text("4.5 (2,495 reviews) "),
      ],
    );
  }
}
