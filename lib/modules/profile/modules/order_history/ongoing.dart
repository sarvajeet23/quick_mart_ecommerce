import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
import 'package:quick_mart_ecommerce/utility/reusable/wishlist_card.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';
import 'package:quick_mart_ecommerce/widget/custom/kslider_button.dart';

class OnGoingCard extends StatelessWidget {
  const OnGoingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order History"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KSliderButton(),
            hsize40,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.red, borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Estimated time: 7 working days",
                        style: PragyaStyle.white,
                      ),
                    )),
                Text(
                  "Days and Time",
                  style: PragyaStyle.black12,
                )
              ],
            ),
            hsize10,
            Wrap(
              children: [WishListCard()],
            )
          ],
        ),
      ),
    );
  }
}
