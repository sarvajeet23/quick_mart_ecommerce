import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/ProductDetailAppBar.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/item_button.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/item_count_button.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/product_description.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/product_detail_button.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/product_name.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/product_rating.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/top_background_image_detail.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

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
                    ProductionDescription(),
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
