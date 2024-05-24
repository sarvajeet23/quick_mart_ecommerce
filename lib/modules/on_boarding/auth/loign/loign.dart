import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/loign/auth/validator.dart';
import 'package:quick_mart_ecommerce/modules/bottom_bar/home_screen.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/forgot/forgot_password.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/signup/signup.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';
import 'package:quick_mart_ecommerce/utility/text_field_name_plate.dart';
import 'auth/toggle_obscure.dart';

class LoginPage extends StatelessWidget {
  final loginkey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        dragStartBehavior: DragStartBehavior.start,
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 8, right: 8),
          child: Form(
            key: loginkey,
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
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                Wrap(
                  direction: Axis.horizontal,
                  children: [
                    Text("Don’t have an account? "),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignupPage()));
                      },
                      child: Text(
                        "Signup",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                ),
                hsize40,
                TextFieldNamePlate(
                  name: 'Email',
                  requiredIcon: " *",
                ),
                hsize10,
                TextFormField(
                  controller: _email,
                  validator: validateEmail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                hsize10,
                TextFieldNamePlate(
                  name: 'Password',
                  requiredIcon: " *",
                ),
                hsize10,
                ObscureTextField(
                  controller: _password,
                  validator: validatePassword,
                ),
                hsize40,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ForgotPassword()));
                      },
                      child: Text("Forgot password?"),
                    ),
                  ],
                ),
                hsize40,
                KButton1(
                  onTap: () {
                    if (loginkey.currentState!.validate()) {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    }
                  },
                  label: 'Login',
                  height: 60,
                  backgraoundCoulor: Colors.black,
                ),
                hsize60,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login with Google",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    wsize10,
                    SvgPicture.asset("images/google.svg"),
                  ],
                ),
                hsize60,
                hsize60,
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    children: [
                      TextSpan(text: "By login, you agree to our "),
                      TextSpan(
                          text: "Privacy Policy  ", style: TextStyle(color: Colors.blue)),
                      TextSpan(text: "and"),
                      TextSpan(
                          text: " Terms & Conditions.",
                          style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
