import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/modules/checkout/checkout.dart';
import 'package:quick_mart_ecommerce/modules/voucher_code_sheet/voucher_code_sheet.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
import 'package:quick_mart_ecommerce/utility/reusable/wishlist_card.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Items"),
        actions: [
          TextButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return VoucherCodeSheet();
                    });
              },
              child: Text(
                "Voucher Code",
                style: PragyaStyle.cyan,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WishListCard(
                trilling: Checkbox(value: true, onChanged: (_) {}),
                subtrilling: IconButton(
                  onPressed: () {},
                  icon: Image.asset("images/icons/trash.png"),
                ),
              ),
              SizedBox(
                height: 379,
              ),
              Text(
                "Order Info",
                style: PragyaStyle.bold,
              ),
              hsize19,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: PragyaStyle.bold12,
                  ),
                  Text(
                    "\$27.25",
                    style: PragyaStyle.bold12,
                  ),
                ],
              ),
              hsize19,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping Cost",
                    style: PragyaStyle.bold12,
                  ),
                  Text(
                    "\$0.00",
                    style: PragyaStyle.bold12,
                  ),
                ],
              ),
              hsize19,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: PragyaStyle.bold,
                  ),
                  Text(
                    "\$27.25",
                    style: PragyaStyle.bold,
                  ),
                ],
              ),
              hsize19,
              KButton1(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Checkout()));
                },
                label: "Checkout (1)",
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
