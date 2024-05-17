import 'package:flutter/material.dart';

class ProductDetailAppBar extends StatelessWidget {
  const ProductDetailAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                style: ButtonStyle(iconSize: MaterialStatePropertyAll(35)),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                )),
            CircleAvatar(
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
              backgroundColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
