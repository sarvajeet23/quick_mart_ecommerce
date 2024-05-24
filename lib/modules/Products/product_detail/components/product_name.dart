import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class ProductName extends StatelessWidget {
  const ProductName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
              width: 80,
              child: Center(
                  child: Text(
                "Top Rated",
                style: TextStyle(color: Colors.white),
              )),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 30, 145, 240),
                  borderRadius: BorderRadius.circular(10)),
            ),
            wsize10,
            Container(
              height: 30,
              width: 120,
              child: Center(
                  child: Text(
                "Free Shipping",
                style: TextStyle(color: Colors.white),
              )),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 129, 218, 132),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 60 * 4,
              child: Text(
                "Loop Silicone Strong Magnetic watch",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Column(
                children: [
                  Text(
                    "\$ 15.25",
                    style: PragyaStyle.boldnormal,
                  ),
                  Text(
                    "\$ 15.25",
                    style: PragyaStyle.bold12
                        .copyWith(decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
