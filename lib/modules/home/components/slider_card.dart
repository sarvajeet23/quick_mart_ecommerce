import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/Products/ProductListing.dart';
import 'package:quick_mart_ecommerce/modules/categories/model/categories_model.dart';
import 'package:quick_mart_ecommerce/modules/categories/sub_categories/model/sub_categories_model.dart';
import 'package:quick_mart_ecommerce/modules/home/exclusive_sales_page.dart';

class SliderCard extends StatefulWidget {
  @override
  State<SliderCard> createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  late CategoryModel deatial;

  final List<SubCategoryModel> model = SubCategoryData().categories;

  final PageController _controller = PageController();
  final List<String> productName = [
    "Headphones",
    "Charger",
    "Mobile",
    "Laptop",
    "Redmi Note 5 Pro",
    "Samsung"
  ];
  final List<String> exclusiveSales = [
    "Shiboo",
    "Baba",
    "Saroj",
    "Mukesh",
    "Ravi",
    "Pragya"
  ];

  int _currentPage = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 170,
          width: double.infinity,
          child: PageView.builder(
            controller: _controller,
            itemCount: productName.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 300,
                height: 180,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ExclusiveSalesPage()));
                    },
                    child: Image.asset(
                      "images/Rectangle 6.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          top: 140,
          right: 40,
          child: _buildDotsIndicator(),
        ),
        Positioned(top: 100, left: 40, child: _productName()),
        Positioned(top: 140, left: 40, child: _exclusiveSales())
      ],
    );
  }

  Widget _buildDotsIndicator() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 18,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < productName.length; i++)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == i ? Colors.blue : Colors.grey,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _productName() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Colors.transparent,
        child: Text(
          productName[_currentPage],
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _exclusiveSales() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Colors.transparent,
        child: Text(
          exclusiveSales[_currentPage],
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }
}
