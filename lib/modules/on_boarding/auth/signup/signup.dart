import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/create_account.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/forgot/forgot_password.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/loign/auth/toggle_obscure.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/loign/auth/validator.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/loign/loign.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';
import 'package:quick_mart_ecommerce/utility/text_field_name_plate.dart';

class SignupPage extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 8, right: 8),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "images/Vector.svg",
                          height: 44,
                        ),
                        Text(
                          "uickMart",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        )
                      ],
                    ),
                  ),
                  hsize40,
                  Text(
                    "Signup",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    children: [
                      Text("Already have an account?"),
                      wsize5,
                      InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.green),
                          ))
                    ],
                  ),
                  hsize40,
                  TextFieldNamePlate(name: "Full Name", requiredIcon: " *"),
                  hsize10,
                  TextFormField(
                    controller: name,
                    validator: validateName,
                    decoration: InputDecoration(
                        border:
                            OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                  ),
                  hsize10,
                  TextFieldNamePlate(name: "Email", requiredIcon: " *"),
                  hsize10,
                  TextFormField(
                    controller: email,
                    validator: validateEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  hsize10,
                  TextFieldNamePlate(
                    name: "Password",
                    requiredIcon: " *",
                  ),
                  hsize10,
                  ObscureTextField(
                    controller: password,
                    validator: validatePassword,
                  ),
                  hsize40,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPassword()));
                          },
                          child: Text("Forgot password?"))
                    ],
                  ),
                  hsize40,
                  KButton1(
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CreateAccount()));
                      }
                    },
                    label: 'Create Account',
                    height: 60,
                    backgraoundCoulor: Colors.black,
                  ),
                  hsize60,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Signup with Google",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      wsize10,
                      SvgPicture.asset("images/google.svg")
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
