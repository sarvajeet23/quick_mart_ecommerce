import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class OrderCompleted extends StatefulWidget {
  const OrderCompleted({super.key});

  @override
  State<OrderCompleted> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderCompleted> {
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
              // KSliderButton(),
              Container(
                  margin: EdgeInsets.only(top: 80),
                  height: 100 * 4,
                  width: 400,
                  child: Image.asset(
                    "images/profile_icons/profile_pic/ongoing_shopping.png",
                    fit: BoxFit.fill,
                  )),
              Text(
                "No completed order",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Text(
                "We don't have any past orders that have been completed. Start shopping now and create your first order with us.",
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
