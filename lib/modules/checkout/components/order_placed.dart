import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/modules/home/home_page.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class OrderPlaced extends StatelessWidget {
  const OrderPlaced({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
            ),
            Text(
              "Your order has been placed successfully",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            hsize10,
            Text(
              "Thank you for choosing us! Feel free to continue shopping and explore our wide range of products. Happy Shopping!",
              textAlign: TextAlign.center,
              style: PragyaColors.black38,
            ),
            hsize30,
            KButton1(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
              label: "Continue Shopping",
              height: 60,
              backgraoundCoulor: const Color.fromARGB(255, 19, 7, 7),
            )
          ],
        ),
      ),
    );
  }
}
