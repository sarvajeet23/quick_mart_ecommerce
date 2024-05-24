import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/widget/common/tile.dart';
import 'package:quick_mart_ecommerce/widget/reusable/product_card.dart';

class LatestProductCard extends StatefulWidget {
  final Color? containerColor;
  final Widget? image;
  final VoidCallback onTap;
  final bool isSelected;

  LatestProductCard({
    super.key,
    this.image,
    this.containerColor,
    required this.onTap,
    required this.isSelected,
  });

  @override
  State<LatestProductCard> createState() => _LatestProductCardState();
}

class _LatestProductCardState extends State<LatestProductCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProductCard(
          backgroundColor: getRandomColor(),
          child: Container(
            height: 130,
            width: 130,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: widget.image,
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: InkWell(
            onTap: widget.onTap,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: widget.isSelected ? Colors.black : Colors.blue,
              child: Image.asset(
                "images/bottom_bar_icon/heart.png",
                color: Colors.white,
                height: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
