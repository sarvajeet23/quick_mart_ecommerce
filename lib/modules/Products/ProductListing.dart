import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/product_detail.dart';
import 'package:quick_mart_ecommerce/modules/filter_product/filter_page.dart';
import 'package:quick_mart_ecommerce/modules/Categories/sub_categories/model/sub_categories.dart';
import 'package:quick_mart_ecommerce/modules/home/components/lastest_product_card.dart';
import 'package:quick_mart_ecommerce/modules/home/components/lastest_product_card_text_label.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';

class ProductListing extends StatelessWidget {
  final SubCategoryModel deatial;
  const ProductListing({super.key, required this.deatial});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(deatial.name),
          actions: [
            IconButton(
              onPressed: () => showModalBottomSheet(
                  context: context, builder: (context) => BottomSheetFilter()),
              icon: Icon(Icons.filter_list_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 100, crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ProductDetail())),
                  child: Wrap(
                    direction: Axis.horizontal,
                    runSpacing: 10,
                    children: [
                      ProductCard(
                        backgroundColor: PragyaColors.addtocard,
                        child: Image.asset(
                          "images/products/product_Lists/Loop silicone .png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      LastestProductsCardTextLabel(
                        onTap: () {},
                      )
                    ],
                  ),
                );
              }),
        ));
  }
}