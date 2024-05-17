import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/modules/checkout/checkout.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
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
                backgraoundCoulor: PragyaColors.black,
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WishListCard extends StatelessWidget {
  final Widget? trilling;
  final Widget? subtrilling;
  const WishListCard({
    super.key,
    this.trilling,
    this.subtrilling,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            width: 120,
            child: Image.asset(
              "images/products/product_Lists/Loop silicone .png",
              fit: BoxFit.fill,
            ),
          ),
          wsize7,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 190,
                  child: Text(
                    "Loop Silicone Strong Magnetic Watch",
                    style: TextStyle(fontSize: 20),
                  )),
              Text(
                "\$15.25",
                style: PragyaStyle.boldwithsize,
              ),
              Text("\$20.20"),
              //itemCount
              Row(
                children: [
                  Text(
                    "- 1 +",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              )
            ],
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [trilling ?? SizedBox(), subtrilling ?? SizedBox()],
          )
        ],
      ),
    );
  }
}

class VoucherCodeSheet extends StatelessWidget {
  const VoucherCodeSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
