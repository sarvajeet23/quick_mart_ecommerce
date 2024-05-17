import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/forgot/create_password.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';
import 'package:quick_mart_ecommerce/widget/otp_screen.dart';

class EmailVerification extends StatelessWidget {
  final GlobalKey<FormState> otplKey = GlobalKey<FormState>();

  EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email Verification"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
        child: Form(
          key: otplKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Confirmation Email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                width: 350,
                child: Text(
                  "Enter the 6-digit verification code sent to your email address.",
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
              ),
              hsize11,
              OTPScreen(),
              hsize19,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend Code",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
              KButton1(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreatePassword()),
                  );
                },
                label: "Send",
                backgraoundCoulor: Colors.black,
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(6, (index) => OTPBox()),
    );
  }
}

class OTPBox extends StatelessWidget {
  const OTPBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 55,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24),
        keyboardType: TextInputType.number,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
