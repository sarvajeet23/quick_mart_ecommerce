import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';
import 'package:quick_mart_ecommerce/widget/custom/item_count_button.dart';

class WishListCard extends StatelessWidget {
  final Widget? trilling;
  final Widget? subtrilling;
  const WishListCard({
    super.key,
    this.trilling,
    this.subtrilling,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 145,
            width: 130,
            child: Image.asset(
              "images/products/product_categories/Loop silicone .png",
              fit: BoxFit.fill,
            ),
          ),
          wsize7,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 190,
                  child: Text(
                    "Loop Silicone Strong Magnetic Watch",
                    style: TextStyle(fontSize: 20),
                  )),

              Text(
                "\$15.25",
                style: PragyaStyle.boldwithsize,
              ),
              Text(
                "\$20.20",
                style: TextStyle(decoration: TextDecoration.lineThrough),
              ),
              hsize10,
              //itemCount
              ItemCountButton()
            ],
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [trilling ?? SizedBox(), subtrilling ?? SizedBox()],
          )
        ],
      ),
    );
  }
}
