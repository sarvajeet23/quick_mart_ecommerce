import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/modules/profile/modules/shipping_card/components/drop_downb.dart';
import 'package:quick_mart_ecommerce/modules/profile/modules/shipping_card/components/text_field_icon.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';
import 'package:quick_mart_ecommerce/utility/text_field_name_plate.dart';
import 'package:quick_mart_ecommerce/utility/text_field_style.dart';

class ShippingCard extends StatefulWidget {
  ShippingCard({super.key});

  @override
  State<ShippingCard> createState() => _ShippingCardState();
}

class _ShippingCardState extends State<ShippingCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shipping Address"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
          child: Form(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              RichText(
                text: TextSpan(
                  text: "Full Name",
                  style: PragyaStyle.black20,
                  children: [
                    TextSpan(
                      text: " *",
                      style: AapColors.red,
                    )
                  ],
                ),
              ),
              hsize10,
              TextField(
                decoration: textFieldstyle(context).copyWith(
                    label: Text(
                  "Enter full name",
                  style: PragyaStyle.black12,
                )),
              ),
              hsize30,
              TextFieldNamePlate(
                name: "Phone Number",
                requiredIcon: " *",
              ),
              hsize10,
              TextField(
                  decoration: textFieldstyle(context).copyWith(
                label: Text(
                  "+91",
                  style: PragyaStyle.black12,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: TextFieldIcons(),
                ),
              )),
              hsize15,
              DropdownB(
                list: ["Select Province", "Airtle"],
              ),
              hsize20,
              DropdownB(
                list: ["Select City", "Airtle"],
              ),
              hsize20,
              TextFieldNamePlate(name: "Street Address ", requiredIcon: "*"),
              hsize10,
              TextField(
                  decoration: textFieldstyle(context).copyWith(
                      label: Text(
                "Enter street address",
                style: PragyaStyle.black12,
              ))),
              hsize20,
              TextFieldNamePlate(name: "Postal Code ", requiredIcon: "*"),
              hsize10,
              TextField(
                  decoration: textFieldstyle(context).copyWith(
                      label: Text(
                "Enter postal code",
                style: PragyaStyle.black12,
              ))),
              hsize30,
              KButton1(
                onTap: () {},
                label: "Save",
                backgraoundCoulor: AapColors.black,
                height: 60,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
