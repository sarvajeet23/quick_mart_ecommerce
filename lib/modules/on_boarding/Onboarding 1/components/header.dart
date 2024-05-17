import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_ecommerce/widget/button.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            "images/Vector.svg",
            height: 15,
          ),
          Text(
            "uickMart",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          kButton(
            title: 'Skip for now',
            textStyle: TextStyle(color: Colors.green),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
