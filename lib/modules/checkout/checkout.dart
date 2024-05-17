import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/modules/checkout/components/checkout_card.dart';
import 'package:quick_mart_ecommerce/modules/checkout/components/payment_card.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckoutCard(),
              hsize39,
              Text("Full Name *"),
              hsize10,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              hsize5,
              Text("Phone Number *"),
              hsize5,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              hsize10,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              hsize10,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Text("Street Address *"),
              hsize5,
              TextField(
                decoration: InputDecoration(
                  label: Text("Enter street address"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Text("Postal Code *"),
              hsize5,
              TextField(
                decoration: InputDecoration(
                  label: Text("Enter postal code"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              hsize39,
              KButton1(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => PaymentCard()));
                },
                label: 'Save',
                height: 60,
                backgraoundCoulor: PragyaColors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
