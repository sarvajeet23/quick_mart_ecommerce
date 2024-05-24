import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';
import 'package:quick_mart_ecommerce/utility/text_field_name_plate.dart';
import 'package:quick_mart_ecommerce/utility/text_field_style.dart';

class Payment_Method extends StatelessWidget {
  const Payment_Method({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment_Method"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AapColors.card,
                    ),
                    child: Image.asset("images/icons/PayPal.png"),
                  ),
                  Container(
                      height: 70,
                      width: 190,
                      child: Image.asset("images/icons/GPay.png"),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AapColors.card,
                      )),
                ],
              ),
              hsize39,
              TextFieldNamePlate(
                name: "Card Holder Name ",
                requiredIcon: "*",
              ),
              hsize10,
              TextField(
                  decoration: textFieldstyle(context).copyWith(
                      label: Text(
                "Enter card holder name",
                style: PragyaStyle.black12,
              ))),
              hsize5,
              TextFieldNamePlate(
                name: "Card Numbere ",
                requiredIcon: "*",
              ),
              hsize10,
              TextField(
                  decoration: textFieldstyle(context).copyWith(
                      label: Text(
                "4111 1111 1111 1111",
                style: PragyaStyle.black12,
              ))),
              hsize19,
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFieldNamePlate(
                        name: "Expiration",
                        requiredIcon: " *",
                      ),
                      hsize10,
                      SizedBox(
                        width: 70 * 2,
                        child: TextField(
                          decoration: textFieldstyle(context).copyWith(
                            label: Text(
                              "MM/YY",
                              style: PragyaStyle.black12,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  wsize8,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFieldNamePlate(name: "CVV ", requiredIcon: "*"),
                      hsize10,
                      SizedBox(
                        width: 70 * 2,
                        child: TextField(
                          decoration: textFieldstyle(context).copyWith(
                            label: Text(
                              "123",
                              style: PragyaStyle.black12,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 60 * 3,
              ),
              KButton1(
                onTap: () {},
                label: "Save",
                backgraoundCoulor: AapColors.black,
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
