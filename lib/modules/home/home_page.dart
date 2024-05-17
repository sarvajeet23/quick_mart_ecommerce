import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/model/product_category.dart';
import 'package:quick_mart_ecommerce/modules/categories/categories_page.dart';
import 'package:quick_mart_ecommerce/modules/deatils_page/deatils_page.dart';
import 'package:quick_mart_ecommerce/modules/home/components/home_app_bar.dart';
import 'package:quick_mart_ecommerce/modules/home/components/lastest_product_card.dart';
import 'package:quick_mart_ecommerce/modules/home/components/lastest_product_card_text_label.dart';
import 'package:quick_mart_ecommerce/modules/home/components/slider_card.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';
import 'package:quick_mart_ecommerce/widget/product_title.dart';
import 'package:quick_mart_ecommerce/widget/products_images.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<ProductCategory> model = Data().categories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeAppBar(),
            hsize19,
            SliderCard(),
            Container(
              child: Column(
                children: [
                  ProductTitle(
                    leading: Text(
                      "Categories",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    trilling: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => CategoriesPage()));
                        },
                        child: Text("SEE ALL")),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                          Data().categories.length,
                          (index) {
                            var data = model[index];
                            return Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: ProductsImages(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DeatilsPage()));
                                  },
                                  picture: Image.asset(
                                    data.picture,
                                    height: 30,
                                  ),
                                  label: Text(
                                    data.name,
                                  )),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ProductTitle(
              leading: Text(
                "Lastest Products",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              trilling: TextButton(onPressed: () {}, child: Text("SEE ALL")),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 70 * 2,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Wrap(
                    children: [
                      Column(
                        children: [
                          LastestProductCard(),
                          hsize10,
                          LastestProductsCardTextLabel()
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
