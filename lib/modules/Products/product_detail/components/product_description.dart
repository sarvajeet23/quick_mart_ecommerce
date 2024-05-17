import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/product_description/product_full_detai.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';

class ProductionDescription extends StatelessWidget {
  const ProductionDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85 * 5,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ProductFullDetail()));
        },
        child: Text(
          "Constructed with high-quality silicone material, the Loop Silicone Strong Magnetic Watch ensures a comfortable and secure fit on your wrist. The soft and flexible silicone is gentle on the skin, making it ideal for... Read more",
          style: PragyaColors.black38.copyWith(fontSize: 17),
        ),
      ),
    );
  }
}
