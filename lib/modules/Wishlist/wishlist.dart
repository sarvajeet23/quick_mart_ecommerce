import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quick_mart_ecommerce/modules/my_cart/my_cart.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Wishlist"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                WishListCard(
                  subtrilling: IconButton(
                      onPressed: () {}, icon: Image.asset("images/icons/trash.png")),
                ),
                hsize10,
              ],
            ),
          ),
        ));
  }
}
