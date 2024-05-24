import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/wishlist/wishlist.dart';
import 'package:quick_mart_ecommerce/modules/categories/categories_page.dart';
import 'package:quick_mart_ecommerce/modules/home/home_page.dart';
import 'package:quick_mart_ecommerce/modules/my_cart/my_cart.dart';
import 'package:quick_mart_ecommerce/modules/profile/profile.dart';
import 'package:quick_mart_ecommerce/widget/custom/customization_bottom_bar.dart';

class BottomNavBarItem {
  final String? icon;
  final String? activeIcon;
  final String? label;
  final int index;

  BottomNavBarItem({this.icon, this.label, this.index = 0, this.activeIcon});
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<BottomNavBarItem> item = [
    BottomNavBarItem(
        icon: "images/bottom_icons/ho.svg",
        label: "Home",
        index: 0,
        activeIcon: 'images/bottom_icons/home_active.svg'),
    BottomNavBarItem(
        icon: "images/bottom_icons/categories.svg",
        label: "Categories",
        index: 1,
        activeIcon: ''),
    BottomNavBarItem(
        icon: "images/bottom_icons/mycard.svg",
        label: "MyCart",
        index: 2,
        activeIcon: ''),
    BottomNavBarItem(
        icon: "images/bottom_icons/wishlist.svg",
        label: "Wishlist",
        index: 3,
        activeIcon: ''),
    BottomNavBarItem(
        icon: "images/bottom_icons/profile.svg",
        label: "Profile",
        index: 4,
        activeIcon: ''),
  ];
  final List<Widget> tabpages = <Widget>[
    Home(),
    CategoriesPage(),
    MyCart(),
    Wishlist(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return MyButtombar(
      bottomNavigationBarItems: item,
      pages: tabpages,
      activeColor: Colors.blue,
      inactiveColor: Colors.black,
      labelSize: 15,
      iconSize: 15,
    );
  }
}
