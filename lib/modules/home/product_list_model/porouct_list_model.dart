import 'dart:convert';

import 'package:quick_mart_ecommerce/modules/home/product_list_model/json_data.dart';

List<Product> parseProducts(String responseBody) {
  final List<dynamic> parsed = json.decode(responseBody) as List<dynamic>;
  return parsed
      .map<Product>((json) => Product.fromJson(json as Map<String, dynamic>))
      .toList();
}

final List<Product> products = parseProducts(jsonData);

class Product {
  final String image;
  final String name;
  final String discountPrice;
  final String actualPrice;

  Product({
    required this.image,
    required this.name,
    required this.discountPrice,
    required this.actualPrice,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      image: json['image'] as String,
      name: json['name'] as String,
      discountPrice: json['discountPrice'] as String,
      actualPrice: json['actualPrice'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'name': name,
      'discountPrice': discountPrice,
      'actualPrice': actualPrice,
    };
  }
}
