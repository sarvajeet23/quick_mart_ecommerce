import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/categories/model/categories_model.dart';
import 'package:quick_mart_ecommerce/modules/categories/sub_categories/sub_categories_page.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';

class CategoriesPage extends StatelessWidget {
  final List<CategoryModel> model = CategoryModelData().categories;
  CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
      ),
      body: GridView.builder(
          itemCount: model.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 140),
          itemBuilder: (context, index) {
            CategoryModel data = model[index];
            return Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SubCategoriesPage(deatial: data)));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        data.picture,
                      ),
                      Text(data.name)
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AapColors.card),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
