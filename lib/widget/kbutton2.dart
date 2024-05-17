import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class KButton2 extends StatelessWidget {
  final double? height;
  final double? width;
  final VoidCallback onTap;
  final String buttonlabel;
  final IconData? buttonicon;

  final Color? backgraoundCoulor;
  const KButton2({
    super.key,
    this.height,
    this.width,
    required this.onTap,
    required this.buttonlabel,
    this.backgraoundCoulor,
    this.buttonicon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: backgraoundCoulor, borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonlabel,
              style: PragyaStyle.white,
            ),
            wsize8,
            Icon(
              buttonicon,
              color: PragyaColors.white,
            )
          ],
        ),
      ),
    );
  }
}
