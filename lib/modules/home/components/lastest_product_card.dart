import 'package:flutter/material.dart';

class LastestProductCard extends StatelessWidget {
  LastestProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProductCard(
          child: Center(
            child: Container(
              height: 130,
              width: 130,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  "https://images.unsplash.com/photo-1566438480900-0609be27a4be?q=80&w=994&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  //color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.black,
              child: Image.asset(
                "images/bottom_bar_icon/heart.png",
                color: Colors.white,
                height: 18,
              )),
        )
      ],
    );
  }
}

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
          color: backgroundColor ?? Colors.red,
          borderRadius: BorderRadius.circular(25),
        ),
        child: child);
  }
}
