import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/modules/checkout/components/checkout_card.dart';
import 'package:quick_mart_ecommerce/modules/checkout/components/checkout_review.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkouut"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CheckoutCard(
                  Icon: Icon(Icons.shopping_bag_outlined),
                  label: Text("shoping"),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => PaymentCard()));
                  },
                ),
                CheckoutCard(
                  Icon: Icon(Icons.payment),
                  label: Text("payment"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CheckoutReview()));
                  },
                ),
              ],
            ),
            hsize19,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,
                  width: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: PragyaColors.card,
                  ),
                  child: Image.asset("images/icons/PayPal.png"),
                ),
                Container(
                    height: 70,
                    width: 190,
                    child: Image.asset("images/icons/GPay.png"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: PragyaColors.card,
                    )),
              ],
            ),
            hsize39,
            Text("Card Holder Name *"),
            hsize5,
            TextField(
              decoration: InputDecoration(
                label: Text("Enter card holder name"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            hsize5,
            Text("Card Number *"),
            hsize5,
            TextField(
              decoration: InputDecoration(
                label: Text("4111 1111 1111 1111"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            hsize19,
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Expiration *"),
                    hsize5,
                    SizedBox(
                      width: 70 * 2,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), label: Text("MM/YY")),
                      ),
                    )
                  ],
                ),
                wsize8,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("CVV *"),
                    hsize5,
                    SizedBox(
                      width: 70 * 2,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), label: Text("123")),
                      ),
                    )
                  ],
                )
              ],
            ),
            hsize60,
            KButton1(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => CheckoutReview()));
              },
              label: "Continue",
              backgraoundCoulor: PragyaColors.black,
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
