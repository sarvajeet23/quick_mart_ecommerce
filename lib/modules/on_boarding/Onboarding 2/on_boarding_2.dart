import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%202/app_bar.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            kAppBar(),
            hsize60,
            Container(
              margin: EdgeInsets.only(right: 16, left: 16),
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Unlock exclusive offers and discounts",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    textAlign: TextAlign.center,
                  ),
                  hsize10,
                  SizedBox(
                    child: Text(
                      "Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
