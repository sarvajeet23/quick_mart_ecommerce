class SubCategoryModel {
  final String name;
  final String picture;

  SubCategoryModel({required this.name, required this.picture});
}

class SubCategoryData {
  final List<SubCategoryModel> categories = [
    SubCategoryModel(
      name: "Laptops",
      picture: "images/products/Electronics/Laptops.png",
    ),
    SubCategoryModel(
      name: "Mobile phones",
      picture: "images/products/Electronics/Mobile phones.png",
    ),
    SubCategoryModel(
      name: "Headphones",
      picture: "images/products/Electronics/Headphones.png",
    ),
    SubCategoryModel(
      name: "Smart Watches",
      picture: "images/products/Electronics/Smart Watches.png",
    ),
    SubCategoryModel(
      name: "Mobile Cases",
      picture: "images/products/Electronics/Mobile Cases.png",
    ),
    SubCategoryModel(
      name: "Monitors",
      picture: "images/products/Electronics/Monitors.png",
    ),
    SubCategoryModel(
      name: "Earphone",
      picture: "images/products/Electronics/earphone.png",
    ),
    SubCategoryModel(
      name: "Charger",
      picture: "images/products/Electronics/charger.png",
    ),
  ];
}
