import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';
import 'package:quick_mart_ecommerce/utility/text_field_name_plate.dart';
import 'package:quick_mart_ecommerce/utility/text_field_style.dart';
import 'package:quick_mart_ecommerce/widget/dilog_box.dart';

class ChangePasswordNew extends StatelessWidget {
  const ChangePasswordNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Password"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ShibooDialog().kRichText(page: "02/", totalPage: "02"),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                "New Password",
                style: PragyaStyle.font25,
              ),
            ),
            Text(
              "Enter your new password and remember it..",
              style: PragyaStyle.black54,
            ),
            hsize10,
            TextFieldNamePlate(
              name: "Password",
              requiredIcon: " *",
            ),
            hsize10,
            TextField(
              decoration: textFieldstyle(context).copyWith(
                  label: Text(
                    "Enter your password",
                    style: PragyaStyle.black12,
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye)),
            ),
            TextFieldNamePlate(
              name: "Confirm Password",
              requiredIcon: " *",
            ),
            hsize10,
            TextField(
              decoration: textFieldstyle(context).copyWith(
                  label: Text(
                    "Enter your password",
                    style: PragyaStyle.black12,
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye)),
            ),
            hsize60,
            KButton1(
              onTap: () {},
              label: "Save",
              backgraoundCoulor: Colors.black,
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
