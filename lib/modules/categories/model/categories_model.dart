class CategoryModel {
  final String name;
  final String picture;

  CategoryModel({required this.name, required this.picture});
}

class CategoryModelData {
  final List<CategoryModel> categories = [
    CategoryModel(
      name: "Electronics",
      picture: "images/products/Electronics.png",
    ),
    CategoryModel(
      name: "Fashion",
      picture: "images/products/Fashion.png",
    ),
    CategoryModel(
      name: "Furniture",
      picture: "images/products/Furniture.png",
    ),
    CategoryModel(
      name: "Industrial",
      picture: "images/products/Industrial.png",
    ),
    CategoryModel(
      name: "Home Decor",
      picture: "images/products/Health.png",
    ),
    CategoryModel(
      name: "Electronic",
      picture: "images/products/Electronic.png",
    ),
    CategoryModel(
      name: "Health",
      picture: "images/products/Health.png",
    ),
    CategoryModel(
      name: "Construction & Real State",
      picture: "images/products/Construction.png",
    ),
    CategoryModel(
      name: "Fabrication Service",
      picture: "images/products/FabricationService.png",
    ),
    CategoryModel(
      name: "Electrical Equipment",
      picture: "images/products/ElectricalEquipment.png",
    ),
  ];
}
