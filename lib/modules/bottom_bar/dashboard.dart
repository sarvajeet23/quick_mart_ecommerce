import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart_ecommerce/modules/wishlist/wishlist.dart';
import 'package:quick_mart_ecommerce/modules/categories/categories_page.dart';
import 'package:quick_mart_ecommerce/modules/home/home_page.dart';
import 'package:quick_mart_ecommerce/modules/my_cart/my_cart.dart';
import 'package:quick_mart_ecommerce/modules/profile/profile.dart';
import 'package:quick_mart_ecommerce/widget/custom/customization_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<BottomNavigationBarItem> pages = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
        icon: SvgPicture.asset("images/bottom_icons/categories.svg"),
        label: "Categories"),
    BottomNavigationBarItem(
        icon: SvgPicture.asset("images/bottom_icons/mycard.svg"), label: "MyCart"),
    BottomNavigationBarItem(
        icon: SvgPicture.asset("images/bottom_icons/wishlist.svg"), label: "Wishlist"),
    BottomNavigationBarItem(
        icon: SvgPicture.asset("images/bottom_icons/profile.svg"), label: "Profile"),
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
      bottomNavigationBarItems: pages,
      pages: tabpages,
      activeColor: Colors.blue,
      inactiveColor: Colors.black,
      labelSize: 15,
      iconSize: 30,
    );
  }
}
