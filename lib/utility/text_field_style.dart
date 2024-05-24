import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';

InputDecoration textFieldstyle(BuildContext context) => InputDecoration(
      label: Text("Enter postal code", style: PragyaStyle.black12),
      enabledBorder: AapColors.outlineinputborder,
      focusedBorder: AapColors.outlineinputborder,
    );
