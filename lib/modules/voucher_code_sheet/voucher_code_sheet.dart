import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class VoucherCodeSheet extends StatelessWidget {
  const VoucherCodeSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Voucher Code",
              style: PragyaStyle.boldnormal,
            ),
            hsize19,
            TextField(
              decoration: InputDecoration(
                  label: Text("Enter Voucher Code"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            hsize50,
            KButton1(
              onTap: () {},
              label: "Apply",
              height: 60,
              backgraoundCoulor: PragyaColors.black,
            )
          ],
        ),
      ),
    );
  }
}
