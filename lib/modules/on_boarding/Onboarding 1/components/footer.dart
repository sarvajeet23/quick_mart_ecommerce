import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16, left: 16),
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Explore a wide range of products",
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
          hsize10,
        ],
      ),
    );
  }
}
