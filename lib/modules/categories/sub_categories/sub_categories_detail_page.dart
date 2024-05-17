import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/Categories/sub_categories/model/sub_categories.dart';
import 'package:quick_mart_ecommerce/modules/Products/ProductListing.dart';
import 'package:quick_mart_ecommerce/modules/categories/model/categories_model.dart';

class SubCategories extends StatelessWidget {
  final CategoryModel deatial;
  final List<SubCategoryModel> model = SubCategoryData().categories;
  SubCategories({super.key, required this.deatial});

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
            var data = model[index];
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
