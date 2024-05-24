import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Widget? child;
  final Color? backgroundColor;
  const ProductCard({
    super.key,
    this.child,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: (backgroundColor ?? Colors.blue).withOpacity(0.2),
        borderRadius: BorderRadius.circular(25),
      ),
      child: child,
    );
  }
}
