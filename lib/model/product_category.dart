class ProductCategory {
  final String name;
  final String picture;

  ProductCategory({required this.name, required this.picture});
}

class Data {
  final List<ProductCategory> categories = [
    ProductCategory(
      name: "Electronics",
      picture: "images/products/Electronics.png",
    ),
    ProductCategory(
      name: "Fashion",
      picture: "images/products/Fashion.png",
    ),
    ProductCategory(
      name: "Furniture",
      picture: "images/products/Furniture.png",
    ),
    ProductCategory(
      name: "Industrial",
      picture: "images/products/Industrial.png",
    ),
  ];
}
