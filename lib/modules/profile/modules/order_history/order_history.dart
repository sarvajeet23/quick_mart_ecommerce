import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';
import 'package:quick_mart_ecommerce/widget/custom/kslider_button.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  bool isSellecct = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order History"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              KSliderButton(),
              Container(
                  margin: EdgeInsets.only(top: 80),
                  height: 100 * 4,
                  width: 400,
                  child: Image.asset(
                    "images/profile_icons/profile_pic/ongoing_shopping.png",
                    fit: BoxFit.fill,
                  )),
              Text(
                "No ongoing order",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Text(
                "We currently don't have any active orders in progress. Feel free to explore our products and place a new order.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
              hsize30,
              KButton1(
                onTap: () {},
                label: "Explore Categories",
                height: 80,
                backgraoundCoulor: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
