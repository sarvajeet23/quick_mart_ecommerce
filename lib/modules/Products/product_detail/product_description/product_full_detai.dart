import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/ProductDetailAppBar.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/item_button.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/item_count_button.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/product_detail_button.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/product_name.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/product_rating.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/top_background_image_detail.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class ProductFullDetail extends StatelessWidget {
  const ProductFullDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Positioned(
              child: Container(
            height: 370,
            width: MediaQuery.of(context).size.width,
            child: TopBackgroundImageDetail(),
          )),
          Positioned(
            top: 40,
            child: ProductDetailAppBar(),
          ),
          Positioned(
            top: 93 * 3,
            left: 50 * 4,
            child: Container(
              color: Colors.white,
              height: 30,
              width: 80,
            ),
          ),
          Positioned(
            top: 330,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60), topLeft: Radius.circular(60)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductName(),
                    hsize10,
                    ProductRating(),
                    hsize19,
                    Text(
                      'Constructed with high-quality silicone material, the Loop Silicone Strong Magnetic Watch ensures a comfortable and secure fit on your wrist. The soft and flexible silicone is gentle on the skin, making it ideal for extended wear. Its lightweight design allows for a seamless blend of comfort and durability.',
                      style: TextStyle(fontSize: 16.0, height: 1.5),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'One of the standout features of this watch band is its strong magnetic closure. The powerful magnets embedded within the band provide a secure and reliable connection, ensuring that your smartwatch stays firmly in place throughout the day. Say goodbye to worries about accidental detachment or slippage - the magnetic closure offers a peace of mind for active individuals on the go.',
                      style: TextStyle(fontSize: 16.0, height: 1.5),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'The Loop Silicone Strong Magnetic Watch Band is highly versatile, compatible with a wide range of smartwatch models. Its adjustable strap length allows for a customizable fit, catering to various wrist sizes. Whether you\'re engaging in intense workouts or attending formal occasions, this watch band effortlessly adapts to your style and activity level.',
                      style: TextStyle(fontSize: 16.0, height: 1.5),
                    ),
                    hsize10,
                    Text(
                      "Color",
                      style: PragyaStyle.bold,
                    ),
                    hsize5,
                    ItemColour(),
                    hsize10,
                    Text(
                      "Quantity",
                      style: PragyaStyle.bold,
                    ),
                    hsize10,
                    ItemQuantity(),
                    hsize40,
                    ProductDetailButton()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
