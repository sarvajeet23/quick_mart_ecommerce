import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({super.key});

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                      ],
                    ),
                    hsize60,
                    hsize60,
                    Container(
                      child: Image.asset("images/01 Online Shopping 5.png"),
                    ),
                  ],
                ),
              ),
            ),
            hsize60,
            Container(
              margin: EdgeInsets.only(right: 16, left: 16),
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Safe and secure payments",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    textAlign: TextAlign.center,
                  ),
                  hsize10,
                  SizedBox(
                    child: Text(
                      " QuickMart employs industry-leading encryption and trusted payment gateways to safeguard your financial information.",
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
