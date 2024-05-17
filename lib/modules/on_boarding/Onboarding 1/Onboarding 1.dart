import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/components/footer.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/components/header.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/components/kbody.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              height: 500,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 247, 254, 255),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Header(),
                    hsize60,
                    Kbody(),
                  ],
                ),
              ),
            ),
            hsize60,
            Footer()
          ],
        ),
      ),
    );
  }
}

class KButton1 extends StatelessWidget {
  final double? height;
  final double? width;
  final VoidCallback onTap;
  final String label;
  final Color? backgraoundCoulor;
  const KButton1({
    super.key,
    this.height,
    this.width,
    required this.onTap,
    required this.label,
    this.backgraoundCoulor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: backgraoundCoulor, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            label,
            style: PragyaStyle.white,
          ),
        ),
      ),
    );
  }
}
