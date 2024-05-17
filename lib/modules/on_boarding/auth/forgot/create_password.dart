import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/forgot/password_change.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/loign/auth/toggle_obscure.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/loign/auth/validator.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';
import 'package:quick_mart_ecommerce/utility/text_field_name_plate.dart';

class CreatePassword extends StatelessWidget {
  TextEditingController password = TextEditingController();
  TextEditingController confromPassword = TextEditingController();

  final formkey = GlobalKey<FormState>();

  CreatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Password"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text("03/03"),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Password",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                "Enter your new password and remember it.",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w400, fontSize: 15),
              ),
              hsize25,
              TextFieldNamePlate(name: "Password", requiredIcon: " *"),
              hsize10,
              ObscureTextField(
                controller: password,
                validator: validatePassword,
                label: Text(
                  "Enter your password",
                  style: PragyaStyle.bold12,
                ),
              ),
              hsize19,
              hsize5,
              TextFieldNamePlate(
                name: "Conform Password",
                requiredIcon: " *",
              ),
              hsize10,
              ObscureTextField(
                controller: password,
                validator: validatePassword,
                label: Text(
                  "Enter your Conform password",
                  style: PragyaStyle.bold12,
                ),
              ),
              hsize35,
              KButton1(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PasswordChange()));
                  }
                },
                label: "Save",
                backgraoundCoulor: Colors.black,
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
