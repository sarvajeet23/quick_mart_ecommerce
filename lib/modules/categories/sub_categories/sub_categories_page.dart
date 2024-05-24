import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/Products/ProductListing.dart';
import 'package:quick_mart_ecommerce/modules/categories/model/categories_model.dart';
import 'package:quick_mart_ecommerce/modules/categories/sub_categories/model/sub_categories_model.dart';

class SubCategoriesPage extends StatelessWidget {
  SubCategoriesPage({super.key, required this.deatial});

  final CategoryModel deatial;

  final List<SubCategoryModel> model = SubCategoryData().categories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(deatial.name),
      ),
      body: GridView.builder(
          itemCount: model.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            SubCategoryModel data = model[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductListing(deatial: data)));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset(data.picture), Text(data.name)],
              ),
            );
          }),
    );
  }
}
