import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/forgot/components/email_verification.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/loign/auth/validator.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';
import 'package:quick_mart_ecommerce/utility/text_field_name_plate.dart';

class ForgotPassword extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final GlobalKey<FormState> emailKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 40),
        child: Form(
          key: emailKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Confirmation Email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text("Enter your email address for verification."),
              hsize20,
              TextFieldNamePlate(name: "Email", requiredIcon: " *"),
              hsize8,
              TextFormField(
                controller: email,
                validator: validateEmail,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              hsize19,
              KButton1(
                onTap: () {
                  if (emailKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EmailVerification()),
                    );
                  }
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
