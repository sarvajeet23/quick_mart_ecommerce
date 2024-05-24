import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/checkout/checkout.dart';
import 'package:quick_mart_ecommerce/modules/my_cart/my_cart.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';
import 'package:quick_mart_ecommerce/widget/kbutton2.dart';

class ProductDetailButton extends StatelessWidget {
  const ProductDetailButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        KButton1(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout()));
          },
          label: "Buy Now",
          height: 60,
          width: 200,
          backgraoundCoulor: AapColors.black,
        ),
        KButton2(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyCart()));
          },
          buttonlabel: "Add To Cart",
          buttonicon: Icons.shopping_cart_outlined,
          height: 60,
          width: 200,
          backgraoundCoulor: AapColors.black,
        ),
      ],
    );
  }
}
