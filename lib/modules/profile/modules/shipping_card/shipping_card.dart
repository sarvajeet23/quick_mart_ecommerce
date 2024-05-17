import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';
import 'package:quick_mart_ecommerce/utility/text_field_name_plate.dart';

class ShippingCard extends StatefulWidget {
  ShippingCard({super.key});

  @override
  State<ShippingCard> createState() => _ShippingCardState();
}

class _ShippingCardState extends State<ShippingCard> {
  List<Widget> items = [];

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
                      style: PragyaColors.red,
                    )
                  ],
                ),
              ),
              hsize10,
              TextField(
                decoration: InputDecoration(
                  label: Text("Enter full name", style: PragyaStyle.black12),
                  focusedBorder: PragyaColors().outlineinputborder,
                  enabledBorder: PragyaColors().outlineinputborder,
                ),
              ),
              hsize30,
              TextFieldNamePlate(
                name: "Phone Number",
                requiredIcon: " *",
              ),
              hsize10,
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    // child: MyDropdown(
                    //   items: items,
                    // ),
                  ),
                  label: Text(
                    "+91",
                    style: PragyaStyle.black12,
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  enabledBorder: PragyaColors().outlineinputborder,
                  focusedBorder: PragyaColors().outlineinputborder,
                ),
              ),
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
                decoration: InputDecoration(
                  label: Text("Enter full name", style: PragyaStyle.black12),
                  enabledBorder: PragyaColors().outlineinputborder,
                  focusedBorder: PragyaColors().outlineinputborder,
                ),
              ),
              hsize20,
              TextFieldNamePlate(name: "Postal Code ", requiredIcon: "*"),
              hsize10,
              TextField(
                decoration: InputDecoration(
                  label: Text("Enter full name", style: PragyaStyle.black12),
                  enabledBorder: PragyaColors().outlineinputborder,
                  focusedBorder: PragyaColors().outlineinputborder,
                ),
              ),
              hsize30,
              KButton1(
                onTap: () {},
                label: "Save",
                backgraoundCoulor: PragyaColors.black,
                height: 60,
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class DropdownB extends StatefulWidget {
  final List<String> list;
  const DropdownB({
    super.key,
    required this.list,
  });

  @override
  State<DropdownB> createState() => _DropdownBState();
}

class _DropdownBState extends State<DropdownB> {
  late String dropdownValue;
  late String defaultValue;

  @override
  void initState() {
    super.initState();
    defaultValue = widget.list.first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: PragyaColors.black12),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            alignment: Alignment.center,
            value: defaultValue,
            borderRadius: BorderRadius.circular(15),
            padding: EdgeInsets.all(8),
            autofocus: true,
            isExpanded: true,
            onChanged: (String? value) {
              setState(() {
                defaultValue = value!;
              });
            },
            items: widget.list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
