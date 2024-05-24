import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/ProductDetailAppBar.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/item_button.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/product_description.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/product_detail_button.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/product_name.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/product_rating.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/size_selecter_button.dart';
import 'package:quick_mart_ecommerce/modules/Products/product_detail/components/top_background_image_detail.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';
import 'package:quick_mart_ecommerce/widget/custom/item_count_button.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 90 * 7,
                  child: Container(
                    color: Colors.pink,
                    child: TopBackgroundImageDetail(),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  bottom: 100 * 8,
                  child: Container(
                    child: ProductDetailAppBar(),
                  ),
                ),
                // Positioned(
                //     top: 0,
                //     right: 0,
                //     left: 10 * 4,
                //     bottom: 100 * 2,
                //     child: Container(
                //       color: Colors.amber,
                //       height: 20,
                //       width: 20,
                //     )),
                Positioned(
                  top: 90 * 3,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40, left: 8, right: 8),
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
                          Text("Size"),
                          hsize10,
                          SizeSelecterButton(
                            onSizeSelected: (size) {},
                          ),
                          hsize19,
                          Text(
                            "Quantity",
                            style: PragyaStyle.bold,
                          ),
                          hsize10,
                          SizedBox(width: 110, child: ItemCountButton()),
                          hsize19,
                          hsize50,
                          ProductDetailButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            hsize10,
            // PageIndicator(itemCount: 5, controller: null,)
          ],
        ),
      ),
    );
  }
}

// Widget _buildDotsIndicator() =>

class PageIndicator extends StatefulWidget {
  final int itemCount;
  final PageController controller;
  final Color selectedColor;
  final Color unselectedColor;
  final double size;
  final double spacing;

  const PageIndicator({
    Key? key,
    required this.itemCount,
    required this.controller,
    this.selectedColor = Colors.blue,
    this.unselectedColor = Colors.grey,
    this.size = 10.0,
    this.spacing = 5.0,
  }) : super(key: key);

  @override
  _PageIndicatorState createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      setState(() {
        _currentPage = widget.controller.page!.round();
      });
    });
  }

  @override
  void dispose() {
    widget.controller.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.itemCount,
        (index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: widget.spacing),
          child: Container(
            width: widget.size,
            height: widget.size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  _currentPage == index ? widget.selectedColor : widget.unselectedColor,
            ),
          ),
        ),
      ),
    );
  }
}
