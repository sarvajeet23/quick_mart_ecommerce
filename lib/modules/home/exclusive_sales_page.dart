import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/filter_product/filter_page.dart';
import 'package:quick_mart_ecommerce/modules/home/components/lastest_product_card_text_label.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';
import 'package:quick_mart_ecommerce/widget/reusable/product_card.dart';

class ExclusiveSalesPage extends StatelessWidget {
  const ExclusiveSalesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exclusive Sales"),
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
                child: Wrap(
                  direction: Axis.horizontal,
                  runSpacing: 10,
                  children: [
                    ProductCard(
                      backgroundColor: AapColors.addtocard,
                      child: Image.asset(
                        "images/products/product_Lists/Loop silicone .png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    LastestProductsCardTextLabel(
                      name: 'iphone',
                      dicountprice: '70,000',
                      actualPrice: "90,000",
                      onTap: () {},
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
