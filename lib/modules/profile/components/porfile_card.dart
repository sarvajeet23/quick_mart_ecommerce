import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/loign/loign.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';
import 'package:quick_mart_ecommerce/widget/dilog_box.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          PictureCard(
            Picture: Image.asset(
              "images/products/product_Lists/Loop silicone .png",
              fit: BoxFit.fill,
            ),
          ),
          wsize10,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("Shiboo"), Text("shibookumar4@gmail.com")],
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/Login");
              },
              icon: SvgPicture.asset(
                "images/profile_icons/logout.svg",
                color: Colors.blue,
              ))
        ],
      ),
    );
  }
}

class PictureCard extends StatelessWidget {
  final Widget Picture;
  const PictureCard({
    super.key,
    required this.Picture,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        decoration:
            BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Picture);
  }
}
