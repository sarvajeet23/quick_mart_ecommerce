import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/model/product_category.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/product_description/product_detail.dart';
import 'package:quick_mart_ecommerce/modules/categories/categories_page.dart';
import 'package:quick_mart_ecommerce/modules/categories/model/categories_model.dart';
import 'package:quick_mart_ecommerce/modules/categories/sub_categories/sub_categories_page.dart';
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
  final List<CategoryModel> categories = CategoryModelData().categories;
  final List<bool> isSelectedList = List.generate(10, (index) => true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeAppBar(),
            hsize19,
            SliderCard(),
            Column(
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
                    child: Text("SEE ALL"),
                  ),
                ),
                Row(
                  children: [
                    ...List.generate(
                      categories.length > 4 ? 4 : categories.length,
                      (index) {
                        var data = categories[index];

                        return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: ProductsImages(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SubCategoriesPage(deatial: data)));
                            },
                            picture: Image.asset(
                              data.picture,
                              height: 30,
                            ),
                            label: Text(data.name),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
            ProductTitle(
              leading: Text(
                "Lastest Products",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              trilling: TextButton(onPressed: () {}, child: Text("SEE ALL")),
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 60 * 2,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProductDetail()));
                  },
                  child: Wrap(
                    spacing: 10,
                    children: [
                      LatestProductCard(
                        image: Image.asset(
                          "images/iphone.jpg",
                          fit: BoxFit.fill,
                        ),
                        onTap: () {
                          setState(() {
                            isSelectedList[index] = !isSelectedList[index];
                          });
                        },
                        isSelected: isSelectedList[index],
                      ),
                      hsize10,
                      LastestProductsCardTextLabel(
                        overLap: Colors.blue,
                        selectedColor: Colors.amber,
                        name: 'iphone',
                        dicountprice: '70,000',
                        actualPrice: "90,000",
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
