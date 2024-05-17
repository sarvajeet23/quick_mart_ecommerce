import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/loign/loign.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.cyan[50], borderRadius: BorderRadius.circular(25)),
            child: Image.asset("images/Rectangle 1741.png"),
          ),
          hsize50,
          Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  width: 200,
                  child: Text(
                    "New Account set successfully",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                hsize15,
                SizedBox(
                  width: 300,
                  child: Text(
                    "Congratulations! Your Account has been set successfully. Please proceed to the login screen to verify your account.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54),
                  ),
                )
              ],
            ),
          ),
          hsize30,
          KButton1(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
            label: "Login Page",
            backgraoundCoulor: Colors.black,
            height: 60,
          )
        ],
      ),
    ));
  }
}
