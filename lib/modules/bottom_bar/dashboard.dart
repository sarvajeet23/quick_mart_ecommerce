import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_ecommerce/modules/wishlist/wishlist.dart';
import 'package:quick_mart_ecommerce/modules/categories/categories_page.dart';
import 'package:quick_mart_ecommerce/modules/home/home_page.dart';
import 'package:quick_mart_ecommerce/modules/my_cart/my_cart.dart';
import 'package:quick_mart_ecommerce/modules/profile/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int current = 0;
  List pages = [
    Home(),
    CategoriesPage(),
    MyCart(),
    Wishlist(),
    Profile(),
  ];

  void onchange(index) {
    setState(() {
      current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[current],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onchange,
          selectedItemColor: Colors.green,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset("images/bottom_icons/home.svg"), label: "Home"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("images/bottom_icons/categories.svg"),
                label: "Categories"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("images/bottom_icons/mycard.svg"),
                label: "MyCart"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("images/bottom_icons/wishlist.svg"),
                label: "Wishlist"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("images/bottom_icons/profile.svg"),
                label: "Profile"),
          ]),
    );
  }
}
