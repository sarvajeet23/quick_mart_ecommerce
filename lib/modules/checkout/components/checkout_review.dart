import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/product_description/product_detail.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/modules/checkout/components/checkout_card.dart';
import 'package:quick_mart_ecommerce/modules/checkout/components/order_placed.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class CheckoutReview extends StatelessWidget {
  const CheckoutReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckoutReview"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckoutCard(
              Icon: Icon(Icons.reviews),
            ),
            hsize39,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Items (2)"),
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ProductDetail()));
                    },
                    icon: Icon(Icons.arrow_forward_ios))
              ], //Icon(Icons.arrow_forward_ios)
            ),
            hsize19,
            Text(
              "Shipping Address",
              style: TextStyle(fontSize: 20),
            ),
            hsize19,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Name"),
                Text("Ahmad Khan"),
              ],
            ),
            hsize15,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Mobile Number"),
                Text("+92 000-0000000"),
              ],
            ),
            hsize15,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Province"),
                Text("Sindh"),
              ],
            ),
            hsize15,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("City"),
                Text("Karachi"),
              ],
            ),
            hsize15,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Street Address"),
                Text("XYZ Address"),
              ],
            ),
            hsize15,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Postal Code"),
                Text("75400"),
              ],
            ),
            hsize25,
            Text(
              "Order Info",
              style: PragyaStyle.font20,
            ),
            hsize25,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Subtotal"),
                Text("\$27.25"),
              ],
            ),
            hsize15,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Shipping Cost"),
                Text("\$0.00"),
              ],
            ),
            hsize15,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: PragyaStyle.font20,
                ),
                Text(
                  "\$27.25",
                  style: PragyaStyle.font20,
                ),
              ],
            ),
            hsize60,
            KButton1(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => OrderPlaced()));
              },
              label: "Place Order",
              height: 60,
              backgraoundCoulor: AapColors.black,
            )
          ],
        ),
      ),
    );
  }
}
