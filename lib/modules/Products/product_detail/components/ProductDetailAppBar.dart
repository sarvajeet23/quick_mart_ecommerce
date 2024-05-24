import 'package:flutter/material.dart';

class ProductDetailAppBar extends StatefulWidget {
  const ProductDetailAppBar({
    super.key,
  });

  @override
  State<ProductDetailAppBar> createState() => _ProductDetailAppBarState();
}

class _ProductDetailAppBarState extends State<ProductDetailAppBar> {
  bool isSelected = true;
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
                style: ButtonStyle(iconSize: WidgetStatePropertyAll(35)),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                )),
            InkWell(
              onTap: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: CircleAvatar(
                child: Icon(
                  Icons.favorite,
                  color: isSelected ? Colors.white : Colors.amber,
                ),
                backgroundColor: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
